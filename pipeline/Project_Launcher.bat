@echo off
title Project Launcher - by g144hz
chcp 65001 > nul
setlocal enabledelayedexpansion
color 5
echo HOST: Run Project Launcher %softwareVersion% on %computername% %date% %time%
echo.
echo.          ██╗      █████╗ ██╗   ██╗███╗   ██╗ ██████╗██╗  ██╗███████╗██████╗ 
echo.          ██║     ██╔══██╗██║   ██║████╗  ██║██╔════╝██║  ██║██╔════╝██╔══██╗
echo.          ██║     ███████║██║   ██║██╔██╗ ██║██║     ███████║█████╗  ██████╔╝
echo.          ██║     ██╔══██║██║   ██║██║╚██╗██║██║     ██╔══██║██╔══╝  ██╔══██╗
echo.          ███████╗██║  ██║╚██████╔╝██║ ╚████║╚██████╗██║  ██║███████╗██║  ██║
echo.          ╚══════╝╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═══╝ ╚═════╝╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝
echo.

:set
set PROJECT="Trapped"
set TOOLS = "true"
set PERFORCE = "false"
set GIT = "true"
set STEAM = "true"
set OCULUS = "false"
set UNREAL = "true"
set UNITY = "false"
set GODOT = "true"

:setPath
set "STARTING_PAGE=http://orteil.dashnet.org/cookieclicker/, https://riskofrain2.fandom.com/wiki/Risk_of_Rain_2_Wiki"
set PERFORCE_PATH="C:/ProgramFiles/Perforce/p4v.exe"
set GIT_PATH="C:\%USERPROFILE%\AppData\Local\GitHubDesktop\GitHubDesktop.exe"
set STEAM_PATH="C:\Program Files (x86)\Steam\steam.exe"
set OCULUS_PATH="C:\Program Files\Oculus\Support\oculus-client\OculusClient.exe"
set UNREALPROJECT_PATH="C:\%USERPROFILE%\Documents\Unreal Projects\UE5_Projects\GDU_Trapped\GDU_Trapped.uproject"
set UNITYPROJECT_PATH="C:\Program Files\Unity Hub\Unity Hub.exe"
set GODOT_PATH="C:\%USERPROFILE%\Documents\Godot_v4.2.2\Godot_v4.2.2-stable_mono_win64.exe"

rem :launch_tools
rem if %TOOLS% == "true" (
rem     for %%s in ( %STARTING_PAGE% ) do (
rem         start %%s
rem     )
rem     echo -----------------------------------------
rem     echo Lancement des Outils de Gestion de Projet
rem     echo -----------------------------------------
rem ) else (
rem     echo Launch Tools on %TOOLS%
rem )

:launch_perforce
if %PERFORCE% == "true" (
    start "Perforce" "%PERFORCE_PATH%"
    echo ------------------
    echo Lancement Perforce
    echo ------------------
) else (
    echo Launch Perforce on %PERFORCE%
)

:launch_git
if %GIT% == "true" (
    start "Git" "%GIT_PATH%"
    echo ----------------
    echo Lancement de Git
    echo ----------------
) else (
    echo Launch Git on %GIT%
)

:launch_steam
if %STEAM% == "true" (
    start "Steam" "%STEAM_PATH%"
    echo ------------------
    echo Lancement de Steam
    echo ------------------
) else (
    echo Launch Steam on %STEAM%
)

:launch_oculus
if %OCULUS% == "true" (
    start "Oculus" "%OCULUS_PATH%"
    echo -------------------
    echo Lancement de Oculus
    echo -------------------
) else (
    echo Launch Oculus on %OCULUS%
)

:launch_unreal
if %UNREAL% == "true" (
    start "%PROJECT%" "%UNREALPROJECT_PATH%"
    echo --------------------------------------
    echo Lancement du Projet Unreal "%PROJECT%"
    echo --------------------------------------
) else (
    echo Launch Unreal Project on %UNREAL%
)


:launch_unity
if %UNITY% == "true" (
    start "%PROJECT%" "%UNITYPROJECT_PATH%"
    echo --------------------------------------
    echo Lancement du Projet Unity "%PROJECT%"
    echo --------------------------------------
) else (
    echo Launch Unity Project on %UNITY%
)

:launch_godot
if %GODOT% == "true" (
    start "%PROJECT%" "%GODOT_PATH%"
    echo --------------------------------------
    echo Lancement du Projet Unity "%PROJECT%"
    echo --------------------------------------
) else (
    echo Launch GODOT Project on %GODOT%
)

:end
echo ----------------
echo FIN DU PROCESSUS
echo ----------------
endlocal
pause
exit /b