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

::Espaces dans les variables : Vous avez des espaces entre le nom de la variable et le signe égal dans les commandes set. En batch, ces espaces sont considérés comme faisant partie du nom de la variable, ce qui entraîne des problèmes lors de l'évaluation.
::Comparaison de chaînes : Pour comparer des chaînes dans un script batch, il faut s'assurer que les guillemets sont bien placés dans les expressions if.
::Utilisation correcte de delayed expansion : Lorsque vous utilisez enabledelayedexpansion, vous devez utiliser !variable! au lieu de %variable% pour les variables à l'intérieur des boucles ou des blocs conditionnels.

:set
set PROJECT="Trapped"
set PIPELINE_SITE="true"
set PERFORCE="false"
set GIT="true"
set STEAM="true"
set OCULUS="false"
set UNREAL="false"
set UNITY="false"
set GODOT="false"

:setPath
set "STARTING_PAGE=https://orteil.dashnet.org/cookieclicker/, https://riskofrain2.fandom.com/wiki/Risk_of_Rain_2_Wiki"
set PERFORCE_PATH="C:/ProgramFiles/Perforce/p4v.exe"
set GIT_PATH="%USERPROFILE%\AppData\Local\GitHubDesktop\GitHubDesktop.exe"
set STEAM_PATH="C:\Program Files (x86)\Steam\steam.exe"
set OCULUS_PATH="C:\Program Files\Oculus\Support\oculus-client\OculusClient.exe"
set UNREALPROJECT_PATH="%USERPROFILE%\Documents\Unreal Projects\UE5_Projects\GDU_Trapped\GDU_Trapped.uproject"
set UNITYPROJECT_PATH="C:\Program Files\Unity Hub\Unity Hub.exe"
set GODOT_PATH="%USERPROFILE%\Documents\Godot_v4.2.2\Godot_v4.2.2-stable_mono_win64.exe"

:launch_pipeline_site
if !PIPELINE_SITE!=="true" (
    for %%s in (!STARTING_PAGE!) do (
        start "" %%s
    )
    echo.
    echo -----------------------------------------
    echo Lancement des Outils de Gestion de Projet
    echo -----------------------------------------
    echo.
) else (
    echo.
    echo Pipeline Site set on !PIPELINE_SITE!
    echo.
)

:launch_perforce
if !PERFORCE!=="true" (
    start "Perforce" !PERFORCE_PATH!
    echo.
    echo ------------------
    echo Lancement Perforce
    echo ------------------
    echo.
) else (
    echo.
    echo Perforce set on !PERFORCE!
    echo.
)

:launch_git
if !GIT!=="true" (
    start "Git" !GIT_PATH!
    echo.
    echo ----------------
    echo Lancement de Git
    echo ----------------
    echo.
) else (
    echo.
    echo Git set on !GIT!
    echo.
)

:launch_steam
if !STEAM!=="true" (
    start "Steam" !STEAM_PATH!
    echo.
    echo ------------------
    echo Lancement de Steam
    echo ------------------
    echo.
) else (
    echo.
    echo Steam set on !STEAM!
    echo.
)

:launch_oculus
if !OCULUS!=="true" (
    start "Oculus" !OCULUS_PATH!
    echo.
    echo -------------------
    echo Lancement de Oculus
    echo -------------------
    echo.
) else (
    echo.
    echo MetaOculus set on !OCULUS!
    echo.
)

:launch_unreal
if !UNREAL!=="true" (
    start !PROJECT! !UNREALPROJECT_PATH!
    echo.
    echo --------------------------------------
    echo Lancement du Projet Unreal !PROJECT!
    echo --------------------------------------
    echo.
) else (
    echo.
    echo Unreal Project set on !UNREAL!
    echo.
)

:launch_unity
if !UNITY!=="true" (
    start !PROJECT! !UNITYPROJECT_PATH!
    echo.
    echo --------------------------------------
    echo Lancement du Projet Unity !PROJECT!
    echo --------------------------------------
    echo.
) else (
    echo.
    echo Unity Project set on !UNITY!
    echo.
)

:launch_godot
if !GODOT!=="true" (
    start !PROJECT! !GODOT_PATH!
    echo.
    echo --------------------------------------
    echo Lancement du Projet Godot !PROJECT!
    echo --------------------------------------
    echo.
) else (
    echo.
    echo Godot Project set on !GODOT!
    echo.
)

:end
echo.
echo ----------------
echo FIN DU PROCESSUS
echo ----------------
echo.
endlocal
echo Fermeture du script dans 30 secondes
timeout /t 30
exit /b
