@echo off

if not ""%1"" == ""START"" goto stop

cmd.exe /C start /B /MIN "" "V:\Development\Website\serverstuff\apache\bin\httpd.exe"

if errorlevel 255 goto finish
if errorlevel 1 goto error
goto finish

:stop
cmd.exe /C start "" /MIN call "V:\Development\Website\serverstuff\killprocess.bat" "httpd.exe"

if not exist "V:\Development\Website\serverstuff\apache\logs\httpd.pid" GOTO finish
del "V:\Development\Website\serverstuff\apache\logs\httpd.pid"
goto finish

:error
echo Error starting Apache

:finish
exit
