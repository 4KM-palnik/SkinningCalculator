@echo off
cd /d "%~dp0"
where npm >nul 2>nul
if errorlevel 1 (
  echo Node.js is required. Install it from https://nodejs.org and run this again.
  pause & exit /b
)
call npm install
call npm run build
echo.
echo Done. Your program is in the "dist" folder: SkinningCalculator.exe
pause
