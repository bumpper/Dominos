@echo off
echo ========================================
echo Dominos - Quick Build Script
echo ========================================
echo.

echo [1/3] Installing dependencies...
call npm install
if errorlevel 1 (
    echo ERROR: Failed to install dependencies
    pause
    exit /b 1
)
echo.

echo [2/3] Building application...
call npm run build
if errorlevel 1 (
    echo ERROR: Build failed
    pause
    exit /b 1
)
echo.

echo [3/3] Build complete!
echo.
echo ========================================
echo Build artifacts location:
echo src-tauri\target\release\bundle\
echo ========================================
echo.
echo Available installers:
dir /B src-tauri\target\release\bundle\msi\*.msi 2>nul
dir /B src-tauri\target\release\bundle\nsis\*.exe 2>nul
echo.
pause
