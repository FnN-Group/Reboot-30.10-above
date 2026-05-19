@echo off
set "TOOLS_DIR=%USERPROFILE%\reboot_tools"
set "FLUTTER_PATH=%TOOLS_DIR%\flutter\bin"

:: Force prioritize local Flutter
if exist "%FLUTTER_PATH%\flutter.bat" (
    set "PATH=%FLUTTER_PATH%;%PATH%"
) else (
    where flutter >nul 2>nul
    if %errorlevel% neq 0 (
        echo [ERROR] Flutter not found. Please run setup_env.bat first.
        pause
        exit /b 1
    )
)

:: Force kill stuck processes and clear lock
taskkill /F /IM dart.exe /T >nul 2>&1
taskkill /F /IM flutter.exe /T >nul 2>&1
if exist "%TOOLS_DIR%\flutter\bin\cache\lockfile" del /f /q "%TOOLS_DIR%\flutter\bin\cache\lockfile"

cd /d "C:\Users\sando\Documents\GitHub\Reboot-30.10-above"

echo [1/3] Getting dependencies...
cd common
call flutter pub get
cd ..

cd cli
call flutter pub get
cd ..

echo [2/3] Compiling CLI Executable...
cd cli
call dart compile exe lib/main.dart -o reboot_cli.exe
if %errorlevel% neq 0 (
    echo [ERROR] CLI Compilation failed.
    cd ..
    pause
    exit /b 1
)
cd ..

echo [3/3] Bundling CLI...
if not exist "build_output\cli" mkdir "build_output\cli"
copy /Y "cli\reboot_cli.exe" "build_output\cli\"

echo.
echo [COMPLETE] CLI is ready in build_output\cli\reboot_cli.exe
pause
