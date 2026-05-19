$ErrorActionPreference = 'Continue'
$ProgressPreference     = 'SilentlyContinue'

$RepoRoot      = 'C:\Users\sando\Documents\GitHub\Reboot-30.10-above'
$FlutterVer    = '3.32.0'
$ToolsDir      = Join-Path $env:USERPROFILE 'reboot_tools'
$FlutterDir    = Join-Path $ToolsDir 'flutter'
$FlutterBin    = Join-Path $FlutterDir 'bin'
$FlutterExe    = Join-Path $FlutterBin 'flutter.bat'
$DartExe       = Join-Path $FlutterBin 'dart.bat'
$LogPath       = Join-Path $RepoRoot 'ci-local-build.log'

function Log {
    param([string]$msg)
    $line = '[' + (Get-Date -Format 'HH:mm:ss') + '] ' + $msg
    Add-Content -Path $LogPath -Value $line -Encoding utf8
    Write-Host $line
}

function Run {
    param(
        [Parameter(Mandatory=$true)][string]$Label,
        [Parameter(Mandatory=$true)][string]$Exe,
        [string[]]$ArgList = @(),
        [string]$Cwd = $RepoRoot
    )
    Log "RUN: $Label"
    Log "     cwd: $Cwd"
    Log "     cmd: $Exe $($ArgList -join ' ')"
    Push-Location $Cwd
    try {
        # Native exe call. 2>&1 merges stderr; with EAP=Continue the ErrorRecord
        # wrapping in PS 5.1 just gets serialized as text by ForEach -> ToString.
        & $Exe @ArgList 2>&1 | ForEach-Object {
            $text = if ($_ -is [System.Management.Automation.ErrorRecord]) { $_.Exception.Message } else { $_.ToString() }
            Add-Content -Path $LogPath -Value $text -Encoding utf8
        }
        $code = $LASTEXITCODE
        Log "     exit: $code"
        if ($code -ne 0) {
            throw "$Label failed with exit code $code"
        }
    } finally {
        Pop-Location
    }
}

if (Test-Path $LogPath) { Remove-Item $LogPath -Force }
Log "Starting local build orchestrator (PID $PID)"

# --- 1. Flutter ---------------------------------------------------------------
if (-not (Test-Path $FlutterExe)) {
    Log "Flutter not found - downloading $FlutterVer"
    if (-not (Test-Path $ToolsDir)) { New-Item -ItemType Directory -Path $ToolsDir | Out-Null }
    if (Test-Path $FlutterDir)      { Remove-Item $FlutterDir -Recurse -Force }

    $zip = Join-Path $ToolsDir "flutter_$FlutterVer.zip"
    $url = "https://storage.googleapis.com/flutter_infra_release/releases/stable/windows/flutter_windows_$FlutterVer-stable.zip"
    Log "Downloading $url"
    Invoke-WebRequest -Uri $url -OutFile $zip -UseBasicParsing
    Log "Extracting to $ToolsDir"
    Expand-Archive -Path $zip -DestinationPath $ToolsDir -Force
    Remove-Item $zip -Force
    Log 'Flutter installed'
} else {
    Log "Flutter present at $FlutterExe"
}

$env:PATH = $FlutterBin + ';' + $env:PATH

Run -Label 'flutter config --enable-windows-desktop' -Exe $FlutterExe -ArgList @('config','--enable-windows-desktop')
Run -Label 'flutter --version'                       -Exe $FlutterExe -ArgList @('--version')

# --- 2. pub get ---------------------------------------------------------------
Run -Label 'pub get (common)' -Exe $FlutterExe -ArgList @('pub','get')  -Cwd (Join-Path $RepoRoot 'common')
Run -Label 'pub get (cli)'    -Exe $FlutterExe -ArgList @('pub','get')  -Cwd (Join-Path $RepoRoot 'cli')
Run -Label 'pub get (gui)'    -Exe $FlutterExe -ArgList @('pub','get')  -Cwd (Join-Path $RepoRoot 'gui')
Run -Label 'gen-l10n (gui)'   -Exe $FlutterExe -ArgList @('gen-l10n')   -Cwd (Join-Path $RepoRoot 'gui')

# --- 3. CLI build -------------------------------------------------------------
Run -Label 'compile reboot_cli.exe' -Exe $DartExe -ArgList @('compile','exe','lib/main.dart','-o','reboot_cli.exe') -Cwd (Join-Path $RepoRoot 'cli')
Log 'CLI build OK'

# --- 4. GUI build -------------------------------------------------------------
Run -Label 'flutter build windows --release' -Exe $FlutterExe -ArgList @('build','windows','--release') -Cwd (Join-Path $RepoRoot 'gui')
Log 'GUI build OK'

# --- 5. Stage build_output ----------------------------------------------------
$Out    = Join-Path $RepoRoot 'build_output'
$OutCli = Join-Path $Out 'cli'
$OutGui = Join-Path $Out 'gui'

if (Test-Path $Out) { Remove-Item $Out -Recurse -Force }
New-Item -ItemType Directory -Path $OutCli | Out-Null
New-Item -ItemType Directory -Path $OutGui | Out-Null

Copy-Item (Join-Path $RepoRoot 'cli\reboot_cli.exe') $OutCli -Force

$guiRelease = Join-Path $RepoRoot 'gui\build\windows\x64\runner\Release'
if (-not (Test-Path $guiRelease)) { throw "GUI Release output not found at $guiRelease" }
Copy-Item (Join-Path $guiRelease '*') $OutGui -Recurse -Force

$dllDir = Join-Path $RepoRoot 'gui\dependencies\dlls'
if (Test-Path $dllDir) {
    Get-ChildItem (Join-Path $dllDir '*.dll') | Copy-Item -Destination $OutGui -Force
}

Log "Staged to $Out"
Log 'BUILD COMPLETE'
