@echo off
cls
echo +-------------------------------------------+
echo +-----------------Copyright-----------------+
echo +-------------------------------------------+
echo     Copyright start.bat                      
echo     kupeck#9974 2020                         
echo     Some rights reserved                     
timeout /T 1
set /P _jarname=<startbat/jarname.txt
set /P _Xmx=<startbat/xmxint.txt
set /P _Xms=<startbat/xmsint.txt
cls
echo +-------------------------------------------+
echo +-----------------Your setup----------------+
echo +-------------------------------------------+
echo     Jar name:      %_jarname%                 
echo     Allowed RAM:   %_Xmx%                      
echo     Allocated RAM: %_Xms%                      
java -Xmx"%_Xmx%"M -Xms"%_Xms%"M -jar "%_jarname%".jar -nogui
echo +-------------------------------------------+
timeout /T 20