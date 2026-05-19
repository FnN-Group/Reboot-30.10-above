@echo off
set "TOOLS_DIR=%USERPROFILE%\reboot_tools"
set "FLUTTER_PATH=%TOOLS_DIR%\flutter\bin"

:: Force prioritize local Flutter
if exist "%FLUTTER_PATH%\flutter.bat" (
    set "PATH=%FLUTTER_PATH%;%PATH%"
) else (
    echo [ERROR] Flutter not found in tools folder.
    echo Please run setup_env.bat first.
    pause
    exit /b 1
)

:: ENSURE WE ARE USING THE RIGHT ONE
call flutter --version | findstr /C:"3.27" >nul
if %errorlevel% neq 0 (
    echo [ERROR] WRONG FLUTTER DETECTED.
    echo Detected:
    call flutter --version
    echo.
    echo Please run setup_env.bat to fix.
    pause
    exit /b 1
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

cd gui
call flutter pub get
call flutter gen-l10n
cd ..

echo [2/3] Building GUI (Release)...
cd gui
call flutter build windows --release
if %errorlevel% neq 0 (
    echo [ERROR] GUI Build failed.
    cd ..
    pause
    exit /b 1
)
cd ..

echo [3/3] Bundling GUI...
if not exist "build_output\gui" mkdir "build_output\gui"
xcopy /E /I /Y "gui\build\windows\x64\runner\Release\*" "build_output\gui\"
xcopy /Y "gui\dependencies\dlls\*.dll" "build_output\gui\"

echo.
echo [COMPLETE] GUI is ready in build_output\gui
pause
