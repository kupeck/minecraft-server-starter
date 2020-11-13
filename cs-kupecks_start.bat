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
echo I   Kolik max RAM allokovat?                I
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

:start
cls
echo +-------------------------------------------+
java -Xmx"%_Xmx%"M -Xms"%_Xms%"M -jar "%_jarname%".jar -nogui
echo +-------------------------------------------+
timeout /T 120
:vyber
cls
echo +-------------------------------------------+
echo I                                           I
echo I   1 = Zavrit okno                         I
echo I   2 = Znovu zapnout server (5 = rychle)   I
echo I   3 = Nový setup                          I
echo I                                           I
echo +-------------------------------------------+
set /P _vybernumber= Please enter an input: 
if "%_vybernumber%"=="1" goto :konec
if "%_vybernumber%"=="2" goto :restart
if "%_vybernumber%"=="3" goto :setup
if "%_vybernumber%"=="5" goto :restartshort
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
exit

:restart
cls
echo +-------------------------------------------+
echo I                                           I
echo I   Server se brzy znova zapne!             I
echo I   Za 20 sekund                            I
echo I                                           I
echo I                                           I
echo +-------------------------------------------+
timeout /T 1
cls
echo +-------------------------------------------+
echo I                                           I
echo I   Server se brzy znova zapne!             I
echo I   Za 19 sekund                            I
echo I                                           I
echo I                                           I
echo +-------------------------------------------+
timeout /T 1
cls
echo +-------------------------------------------+
echo I                                           I
echo I   Server se brzy znova zapne!             I
echo I   Za 18 sekund                            I
echo I                                           I
echo I                                           I
echo +-------------------------------------------+
timeout /T 1
cls
echo +-------------------------------------------+
echo I                                           I
echo I   Server se brzy znova zapne!             I
echo I   Za 17 sekund                            I
echo I                                           I
echo I                                           I
echo +-------------------------------------------+
timeout /T 1
cls
echo +-------------------------------------------+
echo I                                           I
echo I   Server se brzy znova zapne!             I
echo I   Za 16 sekund                            I
echo I                                           I
echo I                                           I
echo +-------------------------------------------+
timeout /T 1
cls
echo +-------------------------------------------+
echo I                                           I
echo I   Server se brzy znova zapne!             I
echo I   Za 15 sekund                            I
echo I                                           I
echo I                                           I
echo +-------------------------------------------+
timeout /T 1
cls
echo +-------------------------------------------+
echo I                                           I
echo I   Server se brzy znova zapne!             I
echo I   Za 14 sekund                            I
echo I                                           I
echo I                                           I
echo +-------------------------------------------+
timeout /T 1
cls
echo +-------------------------------------------+
echo I                                           I
echo I   Server se brzy znova zapne!             I
echo I   Za 13 sekund                            I
echo I                                           I
echo I                                           I
echo +-------------------------------------------+
timeout /T 1
cls
echo +-------------------------------------------+
echo I                                           I
echo I   Server se brzy znova zapne!             I
echo I   Za 12 sekund                            I
echo I                                           I
echo I                                           I
echo +-------------------------------------------+
timeout /T 1
cls
echo +-------------------------------------------+
echo I                                           I
echo I   Server se brzy znova zapne!             I
echo I   Za 11 sekund                            I
echo I                                           I
echo I                                           I
echo +-------------------------------------------+
timeout /T 1
cls
echo +-------------------------------------------+
echo I                                           I
echo I   Server se brzy znova zapne!             I
echo I   Za 10 sekund                            I
echo I                                           I
echo I                                           I
echo +-------------------------------------------+
timeout /T 1
cls
echo +-------------------------------------------+
echo I                                           I
echo I   Server se brzy znova zapne!             I
echo I   Za 9 sekund                             I
echo I                                           I
echo I                                           I
echo +-------------------------------------------+
timeout /T 1
cls
echo +-------------------------------------------+
echo I                                           I
echo I   Server se brzy znova zapne!             I
echo I   Za 8 sekund                             I
echo I                                           I
echo I                                           I
echo +-------------------------------------------+
timeout /T 1
cls
echo +-------------------------------------------+
echo I                                           I
echo I   Server se brzy znova zapne!             I
echo I   Za 7 sekund                             I
echo I                                           I
echo I                                           I
echo +-------------------------------------------+
timeout /T 1
cls
echo +-------------------------------------------+
echo I                                           I
echo I   Server se brzy znova zapne!             I
echo I   Za 6 sekund                             I
echo I                                           I
echo I                                           I
echo +-------------------------------------------+
timeout /T 1
cls
echo +-------------------------------------------+
echo I                                           I
echo I   Server se brzy znova zapne!             I
echo I   Za 5 sekund                             I
echo I                                           I
echo I                                           I
echo +-------------------------------------------+
timeout /T 1
cls
echo +-------------------------------------------+
echo I                                           I
echo I   Server se brzy znova zapne!             I
echo I   Za 4 sekundy                            I
echo I                                           I
echo I                                           I
echo +-------------------------------------------+
timeout /T 1
:restartshort
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
goto :start