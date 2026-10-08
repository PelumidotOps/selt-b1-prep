@echo off
title SELT B1 Prep App Server
echo ========================================================
echo   LanguageCert SELT B1 48-Hour Exam Prep
echo   Opening on your local network for Mobile Phone Access
echo ========================================================
echo.
for /f "tokens=2 delims=:" %%a in ('ipconfig ^| findstr /c:"IPv4 Address"') do (
    set IP=%%a
)
echo Your Computer IP: %IP%
echo.
echo Open this URL on your phone browser (connected to same Wi-Fi):
echo   http://10.246.96.133:8080
echo.
echo Or on your computer:
echo   http://localhost:8080
echo.
echo Starting Python HTTP server on port 8080...
python -m http.server 8080 --bind 0.0.0.0
pause
