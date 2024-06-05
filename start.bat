@echo off
echo [*]author by xiaobaogua
cd "nginx-1.24.0"
echo [+]start nginx
start "" "nginx.exe"
echo [+]start putty
::echo [*]export http_proxy=http://127.0.0.1:8090
::echo [*]export https_proxy=http://127.0.0.1:8090
::echo [*]unset http_proxy
::echo [*]unset https_proxy
..\putty.exe -ssh -R 8090:127.0.0.1:8090 -m ..\command.txt -t
echo [-]stop nginx
nginx.exe -s stop
taskkill /f /im nginx.exe
pause
exit 