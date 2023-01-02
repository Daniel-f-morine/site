@echo off
rem START or STOP Services
rem ----------------------------------
rem Check if argument is STOP or START

if not ""%1"" == ""START"" goto stop


"V:\Development\Website\serverstuff\mysql\bin\mysqld" --defaults-file="V:\Development\Website\serverstuff\mysql\bin\my.ini" --standalone
if errorlevel 1 goto error
goto finish

:stop
cmd.exe /C start "" /MIN call "V:\Development\Website\serverstuff\killprocess.bat" "mysqld.exe"

if not exist "V:\Development\Website\serverstuff\mysql\data\%computername%.pid" goto finish
echo Delete %computername%.pid ...
del "V:\Development\Website\serverstuff\mysql\data\%computername%.pid"
goto finish


:error
echo MySQL could not be started

:finish
exit
