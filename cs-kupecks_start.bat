@echo off
cls
echo +++++++++++++++++++++++++++++++++++++++++++++
echo I                                           I
echo I   Copyright start.bat                     I
echo I   kupeck#9974 2020                        I
echo I   Some rights reserved                    I
echo I                                           I
echo +++++++++++++++++++++++++++++++++++++++++++++
timeout /T 1
goto :jmeno

:jmeno
cls
echo +++++++++++++++++++++++++++++++++++++++++++++
echo I                                           I
echo I   Prosim napiste nazev vaseho .jar        I
echo I   (bez .jar jinak to nefunguje)           I
echo I   a pote zmacknete return/enter           I
echo I                                           I
echo +++++++++++++++++++++++++++++++++++++++++++++
set /P _jarname= Please enter an input: 
goto :start

:start
cls
java -Xmx6144M -Xms3072M -jar "%_jarname%".jar -nogui
timeout /T 3
:vyber
cls
echo +++++++++++++++++++++++++++++++++++++++++++++
echo I                                           I
echo I   1 = Zavrit okno                         I
echo I   2 = Znovu zpanout server                I
echo I   3 = Zmenit .jar jmeno                   I
echo I                                           I
echo +++++++++++++++++++++++++++++++++++++++++++++
set /P _vybernumber= Please enter an input: 
if "%_vybernumber%"=="1" goto :konec
if "%_vybernumber%"=="2" goto :restart
if "%_vybernumber%"=="3" goto :jmeno
if "%_vybernumber%"=="5" goto :restartshort
goto :vyber

:konec
cls
echo +++++++++++++++++++++++++++++++++++++++++++++
echo I                                           I
echo I   Bezpecne ukonceno!                      I
echo I   Nyni muzete pocitac bezpecne vypnout!   I
echo I                                           I
echo I                                           I
echo +++++++++++++++++++++++++++++++++++++++++++++
timeout /T 20
exit

:restart
cls
echo +++++++++++++++++++++++++++++++++++++++++++++
echo I                                           I
echo I   Server se brzy znova zapne!             I
echo I   Za 20 sekund                            I
echo I                                           I
echo I                                           I
echo +++++++++++++++++++++++++++++++++++++++++++++
timeout /T 1
cls
echo +++++++++++++++++++++++++++++++++++++++++++++
echo I                                           I
echo I   Server se brzy znova zapne!             I
echo I   Za 19 sekund                            I
echo I                                           I
echo I                                           I
echo +++++++++++++++++++++++++++++++++++++++++++++
timeout /T 1
cls
echo +++++++++++++++++++++++++++++++++++++++++++++
echo I                                           I
echo I   Server se brzy znova zapne!             I
echo I   Za 18 sekund                            I
echo I                                           I
echo I                                           I
echo +++++++++++++++++++++++++++++++++++++++++++++
timeout /T 1
cls
echo +++++++++++++++++++++++++++++++++++++++++++++
echo I                                           I
echo I   Server se brzy znova zapne!             I
echo I   Za 17 sekund                            I
echo I                                           I
echo I                                           I
echo +++++++++++++++++++++++++++++++++++++++++++++
timeout /T 1
cls
echo +++++++++++++++++++++++++++++++++++++++++++++
echo I                                           I
echo I   Server se brzy znova zapne!             I
echo I   Za 16 sekund                            I
echo I                                           I
echo I                                           I
echo +++++++++++++++++++++++++++++++++++++++++++++
timeout /T 1
cls
echo +++++++++++++++++++++++++++++++++++++++++++++
echo I                                           I
echo I   Server se brzy znova zapne!             I
echo I   Za 15 sekund                            I
echo I                                           I
echo I                                           I
echo +++++++++++++++++++++++++++++++++++++++++++++
timeout /T 1
cls
echo +++++++++++++++++++++++++++++++++++++++++++++
echo I                                           I
echo I   Server se brzy znova zapne!             I
echo I   Za 14 sekund                            I
echo I                                           I
echo I                                           I
echo +++++++++++++++++++++++++++++++++++++++++++++
timeout /T 1
cls
echo +++++++++++++++++++++++++++++++++++++++++++++
echo I                                           I
echo I   Server se brzy znova zapne!             I
echo I   Za 13 sekund                            I
echo I                                           I
echo I                                           I
echo +++++++++++++++++++++++++++++++++++++++++++++
timeout /T 1
cls
echo +++++++++++++++++++++++++++++++++++++++++++++
echo I                                           I
echo I   Server se brzy znova zapne!             I
echo I   Za 12 sekund                            I
echo I                                           I
echo I                                           I
echo +++++++++++++++++++++++++++++++++++++++++++++
timeout /T 1
cls
echo +++++++++++++++++++++++++++++++++++++++++++++
echo I                                           I
echo I   Server se brzy znova zapne!             I
echo I   Za 11 sekund                            I
echo I                                           I
echo I                                           I
echo +++++++++++++++++++++++++++++++++++++++++++++
timeout /T 1
cls
echo +++++++++++++++++++++++++++++++++++++++++++++
echo I                                           I
echo I   Server se brzy znova zapne!             I
echo I   Za 10 sekund                            I
echo I                                           I
echo I                                           I
echo +++++++++++++++++++++++++++++++++++++++++++++
timeout /T 1
cls
echo +++++++++++++++++++++++++++++++++++++++++++++
echo I                                           I
echo I   Server se brzy znova zapne!             I
echo I   Za 9 sekund                             I
echo I                                           I
echo I                                           I
echo +++++++++++++++++++++++++++++++++++++++++++++
timeout /T 1
cls
echo +++++++++++++++++++++++++++++++++++++++++++++
echo I                                           I
echo I   Server se brzy znova zapne!             I
echo I   Za 8 sekund                             I
echo I                                           I
echo I                                           I
echo +++++++++++++++++++++++++++++++++++++++++++++
timeout /T 1
cls
echo +++++++++++++++++++++++++++++++++++++++++++++
echo I                                           I
echo I   Server se brzy znova zapne!             I
echo I   Za 7 sekund                             I
echo I                                           I
echo I                                           I
echo +++++++++++++++++++++++++++++++++++++++++++++
timeout /T 1
cls
echo +++++++++++++++++++++++++++++++++++++++++++++
echo I                                           I
echo I   Server se brzy znova zapne!             I
echo I   Za 6 sekund                             I
echo I                                           I
echo I                                           I
echo +++++++++++++++++++++++++++++++++++++++++++++
timeout /T 1
:restartshort
cls
echo +++++++++++++++++++++++++++++++++++++++++++++
echo I                                           I
echo I   Server se brzy znova zapne!             I
echo I   Za 5 sekund                             I
echo I                                           I
echo I                                           I
echo +++++++++++++++++++++++++++++++++++++++++++++
timeout /T 1
cls
echo +++++++++++++++++++++++++++++++++++++++++++++
echo I                                           I
echo I   Server se brzy znova zapne!             I
echo I   Za 4 sekundy                            I
echo I                                           I
echo I                                           I
echo +++++++++++++++++++++++++++++++++++++++++++++
timeout /T 1
cls
echo +++++++++++++++++++++++++++++++++++++++++++++
echo I                                           I
echo I   Server se brzy znova zapne!             I
echo I   Za 3 sekundy                            I
echo I                                           I
echo I                                           I
echo +++++++++++++++++++++++++++++++++++++++++++++
timeout /T 1
cls
echo +++++++++++++++++++++++++++++++++++++++++++++
echo I                                           I
echo I   Server se brzy znova zapne!             I
echo I   Za 2 sekundy                            I
echo I                                           I
echo I                                           I
echo +++++++++++++++++++++++++++++++++++++++++++++
timeout /T 1
cls
echo +++++++++++++++++++++++++++++++++++++++++++++
echo I                                           I
echo I   Server se brzy znova zapne!             I
echo I   Za 1 sekundu                            I
echo I                                           I
echo I                                           I
echo +++++++++++++++++++++++++++++++++++++++++++++
timeout /T 1
goto :start