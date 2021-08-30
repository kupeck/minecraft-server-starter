@echo off
echo --cls--
echo +-------------------------------------------+
echo +-----------------Copyright-----------------+
echo +-------------------------------------------+
echo     Copyright start.bat                      
echo     kupeck#9974 2020                         
echo     Some rights reserved                     
timeout /T 1
echo. 2>startbat/skriptcom.txt
goto :load

:load
set /P _jarname=<startbat/jarname.txt
set /P _Xmx=<startbat/xmxint.txt
set /P _Xms=<startbat/xmsint.txt
goto :start

:2ndstart
echo --cls--
echo +-------------------------------------------+
echo +-----------------Your setup----------------+
echo +-------------------------------------------+
echo     Jar name:      %_jarname%                 
echo     Allowed RAM:   %_Xmx%                      
echo     Allocated RAM: %_Xms%                      
java -Xmx"%_Xmx%"M -Xms"%_Xms%"M -jar "%_jarname%".jar -nogui
echo +-------------------------------------------+
set /P0 _skriptcom=<startbat/skriptcom.txt
if "%_skriptcom%"=="reboot" goto :load
if "%_skriptcom%"=="shutdown" goto :end
if "%_skriptcom%"=="poweroff" goto :shutdown
goto :load

:start
echo --cls--
echo +-------------------------------------------+
echo +------------------Starting-----------------+
echo +-------------------------------------------+
echo     Server will start soon!                  
echo     In 3 seconds                             
timeout /T 1
echo --cls--
echo +-------------------------------------------+
echo +------------------Starting-----------------+
echo +-------------------------------------------+
echo     Server will start soon!                  
echo     In 2 seconds                             
timeout /T 1
echo --cls--
echo +-------------------------------------------+
echo +------------------Starting-----------------+
echo +-------------------------------------------+
echo     Server will start soon!                  
echo     In 1 second                             
timeout /T 1
goto :2ndstart

:shutdown
shutdown /s /t 30 /c "Shutted down by an Admin from the server"
:end
pause