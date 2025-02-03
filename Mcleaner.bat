::  ███╗   ███╗     ██████╗    ██╗         ███████╗     █████╗     ███╗   ██╗    ███████╗    ██████╗ 
::  ████╗ ████║    ██╔════╝    ██║         ██╔════╝    ██╔══██╗    ████╗  ██║    ██╔════╝    ██╔══██╗
::  ██╔████╔██║    ██║         ██║         █████╗      ███████║    ██╔██╗ ██║    █████╗      ██████╔╝
::  ██║╚██╔╝██║    ██║         ██║         ██╔══╝      ██╔══██║    ██║╚██╗██║    ██╔══╝      ██╔══██╗
::  ██║ ╚═╝ ██║    ╚██████╗    ███████╗    ███████╗    ██║  ██║    ██║ ╚████║    ███████╗    ██║  ██║
::  ╚═╝     ╚═╝     ╚═════╝    ╚══════╝    ╚══════╝    ╚═╝  ╚═╝    ╚═╝  ╚═══╝    ╚══════╝    ╚═╝  ╚═╝

:: ========================
:: = Author  - ZalgoDev   =
:: = Name    - MCleaner   =
:: = Version - 1.0        =
:: = Date    - 03.02.2025 =
:: ========================

chcp 65001
setlocal enabledelayedexpansion
@echo off
cls

::  ██╗   ██╗     █████╗     ██████╗     ██╗     █████╗     ██████╗     ██╗         ███████╗    ███████╗
::  ██║   ██║    ██╔══██╗    ██╔══██╗    ██║    ██╔══██╗    ██╔══██╗    ██║         ██╔════╝    ██╔════╝
::  ██║   ██║    ███████║    ██████╔╝    ██║    ███████║    ██████╔╝    ██║         █████╗      ███████╗
::  ╚██╗ ██╔╝    ██╔══██║    ██╔══██╗    ██║    ██╔══██║    ██╔══██╗    ██║         ██╔══╝      ╚════██║
::   ╚████╔╝     ██║  ██║    ██║  ██║    ██║    ██║  ██║    ██████╔╝    ███████╗    ███████╗    ███████║
::    ╚═══╝      ╚═╝  ╚═╝    ╚═╝  ╚═╝    ╚═╝    ╚═╝  ╚═╝    ╚═════╝     ╚══════╝    ╚══════╝    ╚══════╝

if exist %USERPROFILE%\AppData\Roaming\.minecraft (
    set mcPath=%USERPROFILE%\AppData\Roaming\.minecraft
)
if exist %USERPROFILE%\AppData\Roaming\.minecraft\baritone (
    set baritonePath=%USERPROFILE%\AppData\Roaming\.minecraft\baritone
)
if exist %USERPROFILE%\AppData\Roaming\.minecraft\crash-reports (
    set crashreportPath=%USERPROFILE%\AppData\Roaming\.minecraft\crash-reports
)
if exist %USERPROFILE%\AppData\Roaming\.minecraft\debug (
    set debugPath=%USERPROFILE%\AppData\Roaming\.minecraft\debug
)
if exist %USERPROFILE%\AppData\Roaming\.minecraft\logs (
    set logsPath=%USERPROFILE%\AppData\Roaming\.minecraft\logs
)
if exist %USERPROFILE%\AppData\Roadming\.minecraft\meteor-client (
    set meteorPath=%USERPROFILE%\AppData\Roadming\.minecraft\meteor-client
)
if exist %USERPROFILE%\AppData\Roaming\.minecraft\saves (
    set savesPath=%USERPROFILE%\AppData\Roaming\.minecraft\saves
)
if exist %USERPROFILE%\AppData\Roaming\.minecraft\screenshots (
    set screenshotsPath=%USERPROFILE%\AppData\Roaming\.minecraft\screenshots
)
if exist %USERPROFILE%\AppData\Roaming\.minecraft\TrouserStreak (
    set trouserstreakPath=%USERPROFILE%\AppData\Roaming\.minecraft\TrouserStreak
)

:: ███╗   ███╗    ███████╗    ███╗   ██╗    ██╗   ██╗
:: ████╗ ████║    ██╔════╝    ████╗  ██║    ██║   ██║
:: ██╔████╔██║    █████╗      ██╔██╗ ██║    ██║   ██║
:: ██║╚██╔╝██║    ██╔══╝      ██║╚██╗██║    ██║   ██║
:: ██║ ╚═╝ ██║    ███████╗    ██║ ╚████║    ╚██████╔╝
:: ╚═╝     ╚═╝    ╚══════╝    ╚═╝  ╚═══╝     ╚═════╝ 

:start

echo ————————————————————————
echo — MCleaner by ZalgoDev —
echo ————————————————————————
echo.
echo A. Clear All Minecraft Logs And World !!!
echo B. Clear Logs files
echo C. Clear SavedWorlds
echo D. Clear Screenshots
echo E. Clear TrouserStreak logs
echo X. Exit

choice /C ABCDEX /N /M "Make your choice :"

:: ███████╗    ██╗  ██╗    ██╗    ████████╗
:: ██╔════╝    ╚██╗██╔╝    ██║    ╚══██╔══╝
:: █████╗       ╚███╔╝     ██║       ██║   
:: ██╔══╝       ██╔██╗     ██║       ██║   
:: ███████╗    ██╔╝ ██╗    ██║       ██║   
:: ╚══════╝    ╚═╝  ╚═╝    ╚═╝       ╚═╝   

if %ERRORLEVEL% EQU 6 (
    cls
    exit /b
)

:: ████████╗    ██████╗      ██████╗     ██╗   ██╗    ███████╗    ███████╗    ██████╗     ███████╗    ████████╗    ██████╗     ███████╗     █████╗     ██╗  ██╗
:: ╚══██╔══╝    ██╔══██╗    ██╔═══██╗    ██║   ██║    ██╔════╝    ██╔════╝    ██╔══██╗    ██╔════╝    ╚══██╔══╝    ██╔══██╗    ██╔════╝    ██╔══██╗    ██║ ██╔╝
::    ██║       ██████╔╝    ██║   ██║    ██║   ██║    ███████╗    █████╗      ██████╔╝    ███████╗       ██║       ██████╔╝    █████╗      ███████║    █████╔╝ 
::    ██║       ██╔══██╗    ██║   ██║    ██║   ██║    ╚════██║    ██╔══╝      ██╔══██╗    ╚════██║       ██║       ██╔══██╗    ██╔══╝      ██╔══██║    ██╔═██╗ 
::    ██║       ██║  ██║    ╚██████╔╝    ╚██████╔╝    ███████║    ███████╗    ██║  ██║    ███████║       ██║       ██║  ██║    ███████╗    ██║  ██║    ██║  ██╗
::    ╚═╝       ╚═╝  ╚═╝     ╚═════╝      ╚═════╝     ╚══════╝    ╚══════╝    ╚═╝  ╚═╝    ╚══════╝       ╚═╝       ╚═╝  ╚═╝    ╚══════╝    ╚═╝  ╚═╝    ╚═╝  ╚═╝

if %ERRORLEVEL% EQU 5 (
    echo Check if minecraft path exist
    if not exist !mcPath! (
        echo Minecraft path not found. && pause && cls && goto start
    ) else (
        echo Minecraft Found. File cleanup in progress.
    )
    if exist !trouserstreakPath! (
        echo Deleting TrouserStreak files.
        rmdir /S /Q !trouserstreakPath!
    )
    echo Done.
)

:: ██╗    ██╗     ██████╗     ██████╗     ██╗         ██████╗     ███████╗
:: ██║    ██║    ██╔═══██╗    ██╔══██╗    ██║         ██╔══██╗    ██╔════╝
:: ██║ █╗ ██║    ██║   ██║    ██████╔╝    ██║         ██║  ██║    ███████╗
:: ██║███╗██║    ██║   ██║    ██╔══██╗    ██║         ██║  ██║    ╚════██║
:: ╚███╔███╔╝    ╚██████╔╝    ██║  ██║    ███████╗    ██████╔╝    ███████║
::  ╚══╝╚══╝      ╚═════╝     ╚═╝  ╚═╝    ╚══════╝    ╚═════╝     ╚══════╝

if %ERRORLEVEL% EQU 4 (
    echo Check if minecraft path exist
    if not exist !mcPath! (
        echo Minecraft path not found. && pause && cls && goto start
    ) else (
        echo Minecraft Found. File cleanup in progress.
    )
    if exist !savesPath! (
        echo Deleting minecraft worlds.
        rmdir /S /Q !savesPath!
    )
    echo Done.
)

:: ███████╗     ██████╗    ██████╗     ███████╗    ███████╗    ███╗   ██╗    ███████╗    ██╗  ██╗     ██████╗     ████████╗    ███████╗
:: ██╔════╝    ██╔════╝    ██╔══██╗    ██╔════╝    ██╔════╝    ████╗  ██║    ██╔════╝    ██║  ██║    ██╔═══██╗    ╚══██╔══╝    ██╔════╝
:: ███████╗    ██║         ██████╔╝    █████╗      █████╗      ██╔██╗ ██║    ███████╗    ███████║    ██║   ██║       ██║       ███████╗
:: ╚════██║    ██║         ██╔══██╗    ██╔══╝      ██╔══╝      ██║╚██╗██║    ╚════██║    ██╔══██║    ██║   ██║       ██║       ╚════██║
:: ███████║    ╚██████╗    ██║  ██║    ███████╗    ███████╗    ██║ ╚████║    ███████║    ██║  ██║    ╚██████╔╝       ██║       ███████║
:: ╚══════╝     ╚═════╝    ╚═╝  ╚═╝    ╚══════╝    ╚══════╝    ╚═╝  ╚═══╝    ╚══════╝    ╚═╝  ╚═╝     ╚═════╝        ╚═╝       ╚══════╝

if %ERRORLEVEL% EQU 3 (
    echo Check if minecraft path exist
    if not exist !mcPath! (
        echo Minecraft path not found. && pause && cls && goto start
    ) else (
        echo Minecraft Found. File cleanup in progress.
    )
    if exist !screenshotsPath! (
        echo Deleting screenshots.
        rmdir /S /Q !screenshotsPath!
    )
    echo Done.
)

:: ██╗          ██████╗      ██████╗     ███████╗
:: ██║         ██╔═══██╗    ██╔════╝     ██╔════╝
:: ██║         ██║   ██║    ██║  ███╗    ███████╗
:: ██║         ██║   ██║    ██║   ██║    ╚════██║
:: ███████╗    ╚██████╔╝    ╚██████╔╝    ███████║
:: ╚══════╝     ╚═════╝      ╚═════╝     ╚══════╝

if %ERRORLEVEL% EQU 2 (
    echo Check if minecraft path exist
    if not exist !mcPath! (
        echo Minecraft path not found. && pause && cls && goto start
    ) else (
        echo Minecraft Found. File cleanup in progress.
    )
    if exist !logsPath! (
        echo Deleting logs files. && rmdir /S /Q !logsPath! && echo Done.
    )
    if exist !crashreportPath! (
        echo Deleting crash reports. && rmdir /S /Q !crashreportPath! && echo Done.
    )
    if exist !debugPath! (
        echo Deleting debug files. && rmdir /S /Q !debugPath! && echo Done.
    )
    echo Done.
)

::  █████╗     ██╗         ██╗     
:: ██╔══██╗    ██║         ██║     
:: ███████║    ██║         ██║     
:: ██╔══██║    ██║         ██║     
:: ██║  ██║    ███████╗    ███████╗
:: ╚═╝  ╚═╝    ╚══════╝    ╚══════╝

if %ERRORLEVEL% EQU 1 (
    echo Check if minecraft path exist
    if not exist !mcPath! (
        echo Minecraft path not found. && pause && cls && goto start
    ) else (
        echo Minecraft Found. File cleanup in progress.
    )
    if exist !baritonePath! (
        echo Deleting baritone logs. && rmdir /S /Q !baritonePath!
    )
    if exist !crashreportPath! (
        echo Deleting crash report. && rmdir /S /Q !crashreportPath!
    )
    if exist !debugPath! (
        echo Deleting debug files. && rmdir /S /Q !debugPath!
    )
    if exist !logsPath! (
        echo Deleting logs files. && rmdir /S /Q !logsPath!
    )
    if exist !meteorPath! (
        echo Deleting meteorClient customblocks. && rmdir /S /Q !meteorPath!\customblocks
        echo Deleting meteorClient holograms. && rmdir /S /Q !meteorPath!\holograms
        echo Deleting meteorClient stashes. && rmdir /S /Q !meteorPath!\stashes
        echo Deleting meteorClient waypoints. && rmdir /S /Q !meteorPath!\waypoints
    )
    if exist !screenshotsPath! (
        echo Deleting screenshots. && rmdir /S /Q !screenshotsPath!
    )
    if exist !trouserstreakPath! (
        echo Deleting trouserstreak NewChunks. && rmdir /S /Q !trouserstreakPath!\NewChunks
        echo Deleting trouserstreak SavedWorldInfo. && rmdir /S /Q !trouserstreakPath!\SavedWorldInfo
    )
    echo Done.
)

pause
cls
exit /b

:: ████████╗    ██╗  ██╗    ███████╗            ███████╗    ███╗   ██╗    ██████╗ 
:: ╚══██╔══╝    ██║  ██║    ██╔════╝            ██╔════╝    ████╗  ██║    ██╔══██╗
::    ██║       ███████║    █████╗              █████╗      ██╔██╗ ██║    ██║  ██║
::    ██║       ██╔══██║    ██╔══╝              ██╔══╝      ██║╚██╗██║    ██║  ██║
::    ██║       ██║  ██║    ███████╗            ███████╗    ██║ ╚████║    ██████╔╝
::    ╚═╝       ╚═╝  ╚═╝    ╚══════╝            ╚══════╝    ╚═╝  ╚═══╝    ╚═════╝ 