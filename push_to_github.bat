@echo off
title Push Smart Student Platform to GitHub
color 0a
echo ============================================================
echo   PUSHING TO GITHUB: smart-student-platform
echo ============================================================
echo.
cd /d "%~dp0"
echo Target Remote: https://github.com/ujampadyshuhaib-cpu/smart-student-platform.git
echo Current Branch: main
echo.
echo Executing: git push -u origin main
echo (If prompted, click "Sign in with your browser" or enter credentials)
echo.
git push -u origin main
echo.
if %errorlevel% equ 0 (
    echo ============================================================
    echo   [SUCCESS] Successfully pushed to GitHub!
    echo ============================================================
) else (
    echo ============================================================
    echo   [ERROR] Push failed. Please check your GitHub permissions or token.
    echo ============================================================
)
echo.
pause
