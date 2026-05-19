@echo off
set "FLUTTER_VERSION=3.27.1"
set "TOOLS_DIR=%USERPROFILE%\reboot_tools"
set "FLUTTER_PATH=%TOOLS_DIR%\flutter\bin"

echo [SETUP] Cleaning up processes...
taskkill /F /IM "dart.exe" /T >nul 2>&1
taskkill /F /IM "flutter.exe" /T >nul 2>&1

if not exist "%TOOLS_DIR%" mkdir "%TOOLS_DIR%"

:: Check if already installed
if not exist "%FLUTTER_PATH%\flutter.bat" goto :install

echo [INFO] Found Flutter. Checking version...
cd /d "%FLUTTER_PATH%"
call flutter.bat --version > version.txt 2>&1
findstr /C:"%FLUTTER_VERSION%" version.txt >nul
if %ERRORLEVEL% equ 0 (
    echo [INFO] Version is correct.
    del version.txt
    goto :finalize
)
del version.txt
echo [WARN] Version mismatch. Reinstalling...

:install
echo [INFO] Installing Flutter %FLUTTER_VERSION%...
cd /d "%TOOLS_DIR%"
if exist "flutter" rd /s /q "flutter"

:: Use a random suffix to avoid file locks from previous failed runs
set "ZIP_NAME=flutter_%RANDOM%.zip"

echo [INFO] Downloading (900MB)... This may take a few minutes.
powershell -Command "Write-Host 'Downloading Flutter...'; Invoke-WebRequest -Uri 'https://storage.googleapis.com/flutter_infra_release/releases/stable/windows/flutter_windows_%FLUTTER_VERSION%-stable.zip' -OutFile '%ZIP_NAME%'"

if not exist "%ZIP_NAME%" (
    echo [ERROR] Download failed!
    exit /b 1
)

echo [INFO] Extracting...
powershell -Command "Write-Host 'Extracting...'; Expand-Archive -Path '%ZIP_NAME%' -DestinationPath '.' -Force"
del "%ZIP_NAME%"

:finalize
echo [CONFIG] Setting up environment paths...
set "PATH=%FLUTTER_PATH%;%PATH%"
cd /d "C:\Users\sando\Documents\GitHub\Reboot-30.10-above"
call flutter config --enable-windows-desktop
echo [SUCCESS] Environment is ready.
pause
