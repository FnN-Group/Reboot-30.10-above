$ErrorActionPreference = 'Stop'
$ProgressPreference     = 'SilentlyContinue'

$RepoRoot      = 'C:\Users\sando\Documents\GitHub\Reboot-30.10-above'
$FlutterVer    = '3.27.1'
$ToolsDir      = Join-Path $env:USERPROFILE 'reboot_tools'
$FlutterDir    = Join-Path $ToolsDir 'flutter'
$FlutterBin    = Join-Path $FlutterDir 'bin'
$FlutterExe    = Join-Path $FlutterBin 'flutter.bat'
$DartExe       = Join-Path $FlutterBin 'dart.bat'
$LogPath       = Join-Path $RepoRoot 'ci-local-build.log'

function Log($msg) {
    $ts = Get-Date -Format 'HH:mm:ss'
    "[$ts] $msg" | Tee-Object -FilePath $LogPath -Append | Out-Host
}

if (Test-Path $LogPath) { Remove-Item $LogPath -Force }
Log "Starting local build orchestrator (PID $PID)"

# --- 1. Flutter ---------------------------------------------------------------
if (-not (Test-Path $FlutterExe)) {
    Log "Flutter not found at $FlutterExe - downloading $FlutterVer..."
    if (-not (Test-Path $ToolsDir)) { New-Item -ItemType Directory -Path $ToolsDir | Out-Null }
    if (Test-Path $FlutterDir)      { Remove-Item $FlutterDir -Recurse -Force }

    $zip = Join-Path $ToolsDir "flutter_$FlutterVer.zip"
    $url = "https://storage.googleapis.com/flutter_infra_release/releases/stable/windows/flutter_windows_$FlutterVer-stable.zip"
    Log "Downloading $url"
    Invoke-WebRequest -Uri $url -OutFile $zip -UseBasicParsing
    Log "Extracting to $ToolsDir"
    Expand-Archive -Path $zip -DestinationPath $ToolsDir -Force
    Remove-Item $zip -Force
    Log "Flutter installed"
} else {
    Log "Flutter already present at $FlutterExe"
}

$env:PATH = $FlutterBin + ';' + $env:PATH

Log 'Configuring Flutter (windows-desktop)'
& $FlutterExe config --enable-windows-desktop 2>&1 | Tee-Object -FilePath $LogPath -Append | Out-Null

Log 'flutter --version'
& $FlutterExe --version 2>&1 | Tee-Object -FilePath $LogPath -Append | Out-Null

# --- 2. pub get ---------------------------------------------------------------
function PubGet($subdir) {
    Log "flutter pub get  ($subdir)"
    Push-Location (Join-Path $RepoRoot $subdir)
    try {
        & $FlutterExe pub get 2>&1 | Tee-Object -FilePath $LogPath -Append | Out-Null
        if ($LASTEXITCODE -ne 0) { throw "pub get failed in $subdir (exit $LASTEXITCODE)" }
    } finally { Pop-Location }
}
PubGet 'common'
PubGet 'cli'
PubGet 'gui'

Log 'flutter gen-l10n (gui)'
Push-Location (Join-Path $RepoRoot 'gui')
try {
    & $FlutterExe gen-l10n 2>&1 | Tee-Object -FilePath $LogPath -Append | Out-Null
    if ($LASTEXITCODE -ne 0) { throw "gen-l10n failed (exit $LASTEXITCODE)" }
} finally { Pop-Location }

# --- 3. CLI build -------------------------------------------------------------
Log 'Compiling reboot_cli.exe'
Push-Location (Join-Path $RepoRoot 'cli')
try {
    & $DartExe compile exe lib/main.dart -o reboot_cli.exe 2>&1 | Tee-Object -FilePath $LogPath -Append | Out-Null
    if ($LASTEXITCODE -ne 0) { throw "CLI compile failed (exit $LASTEXITCODE)" }
} finally { Pop-Location }
Log 'CLI build OK'

# --- 4. GUI build -------------------------------------------------------------
Log 'flutter build windows --release (gui)'
Push-Location (Join-Path $RepoRoot 'gui')
try {
    & $FlutterExe build windows --release 2>&1 | Tee-Object -FilePath $LogPath -Append | Out-Null
    if ($LASTEXITCODE -ne 0) { throw "GUI build failed (exit $LASTEXITCODE)" }
} finally { Pop-Location }
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
