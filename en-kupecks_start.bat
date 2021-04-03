@echo off
cls
echo +-------------------------------------------+
echo +-----------------Copyright-----------------+
echo +-------------------------------------------+
echo     Copyright start.bat                      
echo     kupeck#9974 2020                         
echo     Some rights reserved                     
timeout /T 1
goto :firsttime

:firsttime
cls
echo +-------------------------------------------+
echo +------------------Startup------------------+
echo +-------------------------------------------+
echo     First time?                              
echo     1 = New setup                            
echo     2 = Load from previous                   
set /P _firsttime= Choose an option: 
if "%_firsttime%"=="1" goto :setup
if "%_firsttime%"=="2" goto :load
goto :firsttime

:load
set /P _jarname=<startbat/jarname.txt
set /P _Xmx=<startbat/xmxint.txt
set /P _Xms=<startbat/xmsint.txt
goto :start

:setup
cls
echo +-------------------------------------------+
echo +-------------------Setup-------------------+
echo +-------------------------------------------+
echo     Here write name of your .jar file        
echo     (without .jar)                           
echo     and than press return/enter              
set /P _jarname= Please enter an input: 
cls
echo +-------------------------------------------+
echo +-------------------Setup-------------------+
echo +-------------------------------------------+
echo     How much max ram MB allowed?             
echo     (without M)                              
echo     and than press return/enter              
set /P _Xmx= Please enter an input: 
cls
echo +-------------------------------------------+
echo +-------------------Setup-------------------+
echo +-------------------------------------------+
echo     How much min ram MB allocated?           
echo     (without M)                              
echo     and than press return/enter              
set /P _Xms= Please enter an input: 
if exist "startbat" goto :save
mkdir "startbat"
:save 
echo %_jarname%> startbat/jarname.txt
echo %_Xmx%> startbat/xmxint.txt
echo %_Xms%> startbat/xmsint.txt
goto :start

:2ndstart
cls
echo +-------------------------------------------+
echo +-----------------Your setup----------------+
echo +-------------------------------------------+
echo     Jar name:      %_jarname%                 
echo     Allowed RAM:   %_Xmx%                      
echo     Allocated RAM: %_Xms%                      
java -Xmx"%_Xmx%"M -Xms"%_Xms%"M -jar "%_jarname%".jar -nogui
echo +-------------------------------------------+
timeout /T 120
:vyber
cls
echo +-------------------------------------------+
echo +----------------Server ended---------------+
echo +-------------------------------------------+
echo     1 = End program (4 = Shutdown)           
echo     2 = Start the server again               
echo     3 = New setup                            
set /P _vybernumber= Choose an option: 
if "%_vybernumber%"=="1" goto :end
if "%_vybernumber%"=="2" goto :start
if "%_vybernumber%"=="3" goto :setup 
if "%_vybernumber%"=="4" goto :end
if "%_vybernumber%"=="7" start "https://www.youtube-nocookie.com/embed/dQw4w9WgXcQ?modestbranding=1&rel=0&controls=0&disablekb=1"
goto :vyber

:end
cls
echo +-------------------------------------------+
echo +---------------Program ended---------------+
echo +-------------------------------------------+
echo     Safely ended!                            
echo     You can now safely turn off              
echo     your computer                            
timeout /T 10 
if "%_vybernumber%"=="1" shutdown /f /t 2
goto :exit

:start
cls
echo +-------------------------------------------+
echo +------------------Starting-----------------+
echo +-------------------------------------------+
echo     Server will start soon!                  
echo     In 3 seconds                             
timeout /T 1
cls
echo +-------------------------------------------+
echo +------------------Starting-----------------+
echo +-------------------------------------------+
echo     Server will start soon!                  
echo     In 2 seconds                             
timeout /T 1
cls
echo +-------------------------------------------+
echo +------------------Starting-----------------+
echo +-------------------------------------------+
echo     Server will start soon!                  
echo     In 1 second                             
timeout /T 1
goto :2ndstart

:exit
cls
