@echo off
cls
echo +-------------------------------------------+
echo +-----------------Copyright-----------------+
echo +-------------------------------------------+
echo     Copyright start.bat                      
echo     kupeck#9974 2020                         
echo     Some rights reserved                     
timeout /T 1
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
echo     How much max MB of RAM allowed?             
echo     (without M)                              
echo     and than press return/enter              
set /P _Xmx= Please enter an input: 
cls
echo +-------------------------------------------+
echo +-------------------Setup-------------------+
echo +-------------------------------------------+
echo     How many base MB of RAM allocated?           
echo     (without M)                              
echo     and than press return/enter              
set /P _Xms= Please enter an input: 
if exist "startbat" goto :save
mkdir "startbat"
:save 
echo %_jarname%> startbat/jarname.txt
echo %_Xmx%> startbat/xmxint.txt
echo %_Xms%> startbat/xmsint.txt
cls
echo +-------------------------------------------+
echo +---------------Verification----------------+
echo +-------------------------------------------+
echo     Have you netered everything 
echo     just how you want it?
echo +-------------------------------------------+
echo     Name of .jar file   : %_jarname%
echo     Maximum allowed RAM : %_Xmx%
echo     Base allocated RAM  : %_Xms%
echo +-------------------------------------------+
echo     If you are happy with these values
echo     enter 1 if not, enter 2
set /P _choice= Enter a number: 
if "%_choice%"=="1" goto :exit
if "%_choice%"=="2" goto :setup
:exit
cls