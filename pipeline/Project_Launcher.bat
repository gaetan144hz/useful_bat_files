@echo off
setlocal enabledelayedexpansion


rem Vérifier si le fichier de configuration existe
set "CONFIG_PATH=%USERPROFILE%\Documents\%PROJECT%_launcher_config.txt"
if not exist "%CONFIG_PATH%" (
    :: #################### Project Name #####################
    set PROJECT=GDU_Hitman
    :: #######################################################

    :: #################### Launch State #####################
    set TOOLS="false"
    set PERFORCE="false"
    set GIT="false"
    set STEAM="false"
    set OCULUS="false"
    set UNREAL="false"
    set UNITY="false"
    :: ######################################################

    :: #################### Path of App #####################
    set "STARTING_PAGE=https://start.me/p/aLz1Oj/page-d-accueil https://miro.com/app/board/uXjVNz6606I https://g144hz.atlassian.net/jira/software/projects/HIT/boards/5 https://g144hz.atlassian.net/wiki/spaces/Hitman/overview"
    set "PERFORCE_PATH=C:\Program Files\Perforce\p4v.exe"
    set GIT_PATH="D:\Users\g.dumas\AppData\Local\gitkraken\gitkraken.exe"
    set STEAM_PATH="D:\steam\steam.exe"
    set OCULUS_PATH="D:\Oculus\Support\oculus-client\OculusClient.exe"
    set UNREALPROJECT_PATH="D:\Unreal_Project\UE_5.3\GDU_Hitman\%PROJECT%.uproject"
    set "UNITYPROJECT_PATH=C:\Program Files\Unity Hub\Unity Hub.exe"
    :: #######################################################

    rem Écrire les valeurs par défaut dans le fichier de configuration
    >"%CONFIG_PATH%" (
        echo PROJECT=%PROJECT%

        echo TOOLS=%TOOLS%
        echo PERFORCE=%PERFORCE%
        echo GIT=%GIT%
        echo STEAM=%STEAM%
        echo OCULUS=%OCULUS%
        echo UNREAL=%UNREAL%
        echo UNITY=%UNITY%

        echo STARTING_PAGE=%STARTING_PAGE%
        echo PERFORCE_PATH=%PERFORCE_PATH%
        echo GIT_PATH=%GIT_PATH%
        echo STEAM_PATH=%STEAM_PATH%
        echo OCULUS_PATH=%OCULUS_PATH%
        echo UNREALPROJECT_PATH=%UNREALPROJECT_PATH%
        echo UNITYPROJECT_PATH=%UNITYPROJECT_PATH%

    )
    echo Valeurs par defaut definies et enregistrees dans "%CONFIG_PATH%"
) else (
    echo Je lis les valeurs
    rem Lire les valeurs à partir du fichier de configuration
    for /f "tokens=1,* delims==" %%a in (%CONFIG_PATH%) do (
        :: #################### Project Name #####################
        if "%%a"=="PROJECT" set PROJECT=%%b
        :: #######################################################

        :: #################### Launch State #####################
        if "%%a"=="TOOLS" set TOOLS=%%b
        if "%%a"=="PERFORCE" set PERFORCE=%%b
        if "%%a"=="GIT" set GIT=%%b
        if "%%a"=="STEAM" set STEAM=%%b
        if "%%a"=="OCULUS" set OCULUS=%%b
        if "%%a"=="UNREAL" set UNREAL=%%b
        if "%%a"=="UNITY" set UNITY=%%b
        :: #######################################################

        :: #################### Path of App Reader #####################
        rem ajouter les autres App
        if "%%a"=="STARTING_PAGE" set "STARTING_PAGE=%%b"
        if "%%a"=="PERFORCE_PATH" set "PERFORCE_PATH=%%b"
        if "%%a"=="GIT_PATH" set GIT_PATH=%%b
        if "%%a"=="STEAM_PATH" set STEAM_PATH=%%b
        if "%%a"=="OCULUS_PATH" set OCULUS_PATH=%%b
        if "%%a"=="UNREALPROJECT_PATH" set "UNREALPROJECT_PATH=%%b"
        if "%%a"=="UNITYPROJECT_PATH" set "UNITYPROJECT_PATH=%%b"
        :: ############################################################
    )
)

:: ######################################################
echo Lancement des Applciations pour le Projet: %PROJECT%
:launch_tools
:launch_perforce
:launch_git
:launch_steam
:launch_oculus
:launch_unreal
:end
:: ######################################################

:launch_tools
if %TOOLS% == "true" (
    for %%s in (%STARTING_PAGE%) do (
        start %%s
    )
    echo -----------------------------------------
    echo Lancement des Outils de Gestion de Projet
    echo -----------------------------------------
) else (
    echo Launch Tools on %TOOLS%
)

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

:end
echo ----------------
echo FIN DU PROCESSUS
echo ----------------
endlocal
pause
exit /b