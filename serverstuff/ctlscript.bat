@echo off
rem START or STOP Services
rem ----------------------------------
rem Check if argument is STOP or START

if not ""%1"" == ""START"" goto stop

if exist V:\Development\Website\serverstuff\hypersonic\scripts\ctl.bat (start /MIN /B V:\Development\Website\serverstuff\server\hsql-sample-database\scripts\ctl.bat START)
if exist V:\Development\Website\serverstuff\ingres\scripts\ctl.bat (start /MIN /B V:\Development\Website\serverstuff\ingres\scripts\ctl.bat START)
if exist V:\Development\Website\serverstuff\mysql\scripts\ctl.bat (start /MIN /B V:\Development\Website\serverstuff\mysql\scripts\ctl.bat START)
if exist V:\Development\Website\serverstuff\postgresql\scripts\ctl.bat (start /MIN /B V:\Development\Website\serverstuff\postgresql\scripts\ctl.bat START)
if exist V:\Development\Website\serverstuff\apache\scripts\ctl.bat (start /MIN /B V:\Development\Website\serverstuff\apache\scripts\ctl.bat START)
if exist V:\Development\Website\serverstuff\openoffice\scripts\ctl.bat (start /MIN /B V:\Development\Website\serverstuff\openoffice\scripts\ctl.bat START)
if exist V:\Development\Website\serverstuff\apache-tomcat\scripts\ctl.bat (start /MIN /B V:\Development\Website\serverstuff\apache-tomcat\scripts\ctl.bat START)
if exist V:\Development\Website\serverstuff\resin\scripts\ctl.bat (start /MIN /B V:\Development\Website\serverstuff\resin\scripts\ctl.bat START)
if exist V:\Development\Website\serverstuff\jetty\scripts\ctl.bat (start /MIN /B V:\Development\Website\serverstuff\jetty\scripts\ctl.bat START)
if exist V:\Development\Website\serverstuff\subversion\scripts\ctl.bat (start /MIN /B V:\Development\Website\serverstuff\subversion\scripts\ctl.bat START)
rem RUBY_APPLICATION_START
if exist V:\Development\Website\serverstuff\lucene\scripts\ctl.bat (start /MIN /B V:\Development\Website\serverstuff\lucene\scripts\ctl.bat START)
if exist V:\Development\Website\serverstuff\third_application\scripts\ctl.bat (start /MIN /B V:\Development\Website\serverstuff\third_application\scripts\ctl.bat START)
goto end

:stop
echo "Stopping services ..."
if exist V:\Development\Website\serverstuff\third_application\scripts\ctl.bat (start /MIN /B V:\Development\Website\serverstuff\third_application\scripts\ctl.bat STOP)
if exist V:\Development\Website\serverstuff\lucene\scripts\ctl.bat (start /MIN /B V:\Development\Website\serverstuff\lucene\scripts\ctl.bat STOP)
rem RUBY_APPLICATION_STOP
if exist V:\Development\Website\serverstuff\subversion\scripts\ctl.bat (start /MIN /B V:\Development\Website\serverstuff\subversion\scripts\ctl.bat STOP)
if exist V:\Development\Website\serverstuff\jetty\scripts\ctl.bat (start /MIN /B V:\Development\Website\serverstuff\jetty\scripts\ctl.bat STOP)
if exist V:\Development\Website\serverstuff\hypersonic\scripts\ctl.bat (start /MIN /B V:\Development\Website\serverstuff\server\hsql-sample-database\scripts\ctl.bat STOP)
if exist V:\Development\Website\serverstuff\resin\scripts\ctl.bat (start /MIN /B V:\Development\Website\serverstuff\resin\scripts\ctl.bat STOP)
if exist V:\Development\Website\serverstuff\apache-tomcat\scripts\ctl.bat (start /MIN /B /WAIT V:\Development\Website\serverstuff\apache-tomcat\scripts\ctl.bat STOP)
if exist V:\Development\Website\serverstuff\openoffice\scripts\ctl.bat (start /MIN /B V:\Development\Website\serverstuff\openoffice\scripts\ctl.bat STOP)
if exist V:\Development\Website\serverstuff\apache\scripts\ctl.bat (start /MIN /B V:\Development\Website\serverstuff\apache\scripts\ctl.bat STOP)
if exist V:\Development\Website\serverstuff\ingres\scripts\ctl.bat (start /MIN /B V:\Development\Website\serverstuff\ingres\scripts\ctl.bat STOP)
if exist V:\Development\Website\serverstuff\mysql\scripts\ctl.bat (start /MIN /B V:\Development\Website\serverstuff\mysql\scripts\ctl.bat STOP)
if exist V:\Development\Website\serverstuff\postgresql\scripts\ctl.bat (start /MIN /B V:\Development\Website\serverstuff\postgresql\scripts\ctl.bat STOP)

:end

