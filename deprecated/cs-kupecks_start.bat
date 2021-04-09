@echo off
cls
echo +-------------------------------------------+
echo I                                           I
echo I   Copyright start.bat                     I
echo I   kupeck#9974 2020                        I
echo I   Some rights reserved                    I
echo I                                           I
echo +-------------------------------------------+
timeout /T 1
goto :firsttime

:firsttime
cls
echo +-------------------------------------------+
echo I                                           I
echo I   Poprvé?                                 I
echo I   1 = Nový setup                          I
echo I   2 = Načíst z předchozího                I
echo I                                           I
echo +-------------------------------------------+
set /P _firsttime= Please enter an input: 
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
echo I                                           I
echo I   Prosim napiste nazev vaseho .jar        I
echo I   (bez .jar)                              I
echo I   a pote zmacknete return/enter           I
echo I                                           I
echo +-------------------------------------------+
set /P _jarname= Please enter an input: 
cls
echo +-------------------------------------------+
echo I                                           I
echo I   Kolik max RAM povolit?                  I
echo I   (bez M)                                 I
echo I   a potom zmacknete return/enter          I
echo I                                           I
echo +-------------------------------------------+
set /P _Xmx= Please enter an input: 
cls
echo +-------------------------------------------+
echo I                                           I
echo I   Kolik min RAM allokovat?                I
echo I   (bez M)                                 I
echo I   a potom zmacknete return/enter          I
echo I                                           I
echo +-------------------------------------------+
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
echo I                                           I
echo I   Jar name:       %_jarname%               I
echo I   Povoleno RAM:   %_Xmx%                    I
echo I   Allokovano RAM: %_Xms%                    I
echo I                                           I
echo +-------------------------------------------+
java -Xmx"%_Xmx%"M -Xms"%_Xms%"M -jar "%_jarname%".jar -nogui
echo +-------------------------------------------+
timeout /T 120
:vyber
cls
echo +-------------------------------------------+
echo I                                           I
echo I   1 = Ukoncit program                     I
echo I   2 = Znovu zapnout server                I
echo I   3 = Nový setup                          I
echo I                                           I
echo +-------------------------------------------+
set /P _vybernumber= Please enter an input: 
if "%_vybernumber%"=="1" goto :konec
if "%_vybernumber%"=="2" goto :start
if "%_vybernumber%"=="3" goto :setup
if "%_vybernumber%"=="4" start microsoft-edge:"https://www.youtube-nocookie.com/embed/dQw4w9WgXcQ?modestbranding=1&rel=0&controls=0&disablekb=1"
goto :vyber

:konec
cls
echo +-------------------------------------------+
echo I                                           I
echo I   Bezpecne ukonceno!                      I
echo I   Nyni muzete pocitac bezpecne vypnout!   I
echo I                                           I
echo I                                           I
echo +-------------------------------------------+
timeout /T 20
goto :exit

:start
cls
echo +-------------------------------------------+
echo I                                           I
echo I   Server se brzy znova zapne!             I
echo I   Za 3 sekundy                            I
echo I                                           I
echo I                                           I
echo +-------------------------------------------+
timeout /T 1
cls
echo +-------------------------------------------+
echo I                                           I
echo I   Server se brzy znova zapne!             I
echo I   Za 2 sekundy                            I
echo I                                           I
echo I                                           I
echo +-------------------------------------------+
timeout /T 1
cls
echo +-------------------------------------------+
echo I                                           I
echo I   Server se brzy znova zapne!             I
echo I   Za 1 sekundu                            I
echo I                                           I
echo I                                           I
echo +-------------------------------------------+
timeout /T 1
goto :2ndstart

:exit
cls