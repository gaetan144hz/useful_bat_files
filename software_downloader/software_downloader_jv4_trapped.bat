@echo off
title Software Requirement for Trapped Project JV4 - g144hz
chcp 65001 > nul
color 5

echo HOST: Run DOWNLOADER on %computername% %date% %time%
echo.
echo.           ██████╗  ██████╗ ██╗    ██╗███╗   ██╗██╗      ██████╗  █████╗ ██████╗ ███████╗██████╗           
echo.           ██╔══██╗██╔═══██╗██║    ██║████╗  ██║██║     ██╔═══██╗██╔══██╗██╔══██╗██╔════╝██╔══██╗          
echo.           ██║  ██║██║   ██║██║ █╗ ██║██╔██╗ ██║██║     ██║   ██║███████║██║  ██║█████╗  ██████╔╝          
echo.           ██║  ██║██║   ██║██║███╗██║██║╚██╗██║██║     ██║   ██║██╔══██║██║  ██║██╔══╝  ██╔══██╗          
echo.           ██████╔╝╚██████╔╝╚███╔███╔╝██║ ╚████║███████╗╚██████╔╝██║  ██║██████╔╝███████╗██║  ██║          
echo.           ╚═════╝  ╚═════╝  ╚══╝╚══╝ ╚═╝  ╚═══╝╚══════╝ ╚═════╝ ╚═╝  ╚═╝╚═════╝ ╚══════╝╚═╝  ╚═╝          
echo.

::Initialisation des varaiables
set "choices="
set "steam=false"
set "discord=false"
set "quixelMixer=false"
set "blender=false"
set "blenderKit=false"
set "notion=false"
set "obsidian=false"
set "visualStudioCode=false"
set "sublimeText=false"
set "perforce=false"
set "unityHub=false"
set "godot=false"
set "githubDesktop=false"
set "quit=false"

:menu
echo ============================
echo        MENU PRINCIPAL
echo ============================
echo 1. Steam 
echo 2. Discord 
echo 3. QuixelMixer 
echo 4. Blender 
echo 5. BlenderKit 
echo 6. Notion 
echo 7. Obsidian 
echo 8. VisualStudioCode 
echo 9. SublimeText
echo 10. Perforce 
echo 11. UnityHub 
echo 12. Godot 
echo 13. GithubDesktop 
echo 14. Quit 
set /p choices="Choisissez une ou plusieurs options pour télécharger les éxécutables (séparées par des espaces) [1-14] : "

for %%i in (%choices%) do (
    if "%%i"=="0" set "quit=true"
    if "%%i"=="1" set "steam=true"
    if "%%i"=="2" set "discord=true"
    if "%%i"=="3" set "quixelMixer=true"
    if "%%i"=="4" set "blender=true"
    if "%%i"=="5" set "blenderKit=true"
    if "%%i"=="6" set "notion=true"
    if "%%i"=="7" set "obsidian=true"
    if "%%i"=="8" set "visualStudioCode=true"
    if "%%i"=="9" set "perforce=true"
    if "%%i"=="10" set "unityHub=true"
    if "%%i"=="11" set "godot=true"
    if "%%i"=="12" set "githubDesktop=true"
)

echo Execution des options selectionnees :
if "%steam%"=="true" (
    echo Telechargement de Steam 
    start "" "https://cdn.akamai.steamstatic.com/client/installer/SteamSetup.exe"
    timeout /t 1
)

if "%discord%"=="true" (
    echo Telechargement de Discord 
    start "" "https://discord.com/api/downloads/distributions/app/installers/latest?channel=stable&platform=win&arch=x64"
    timeout /t 1
)

if "%quixelMixer%"=="true" (
    echo Telechargement de QuixelMixer 
    start "" "https://d2shgxa8i058x8.cloudfront.net/mixer/win/Quixel_Mixer_2022.1.1_Beta.exe"
    timeout /t 1
)

if "%blender%"=="true" (
    echo Telechargement de Blender 
    start "" "https://mirrors.iu13.net/blender/release/Blender4.2/blender-4.2.1-windows-x64.msi"
    timeout /t 1
)

if "%blenderKit%"=="true" (
    echo Telechargement de BlenderKit 
    start "" "https://www.blenderkit.com/addon-download/blenderkit.zip?source=get-blenderkit&source_asset_id=&repository=/api/v1/extensions/&blender_version_min=4.2.0"
    timeout /t 1
)

if "%notion%"=="true" (
    echo Telechargement de Notion 
    start "" "https://www.notion.so/desktop/windows/download?from=marketing&tid=w_c0478e370e484d2c9c49ac4121e4bf1f"
    timeout /t 1
)

if "%obsidian%"=="true" (
    echo Telechargement de Obsidian 
    start "" "https://github.com/obsidianmd/obsidian-releases/releases/download/v1.6.7/Obsidian-1.6.7.exe"
    timeout /t 1
)

if "%visualStudioCode%"=="true" (
    echo Telechargement de VisualStudioCode 
    start "" "https://code.visualstudio.com/sha/download?build=stable&os=win32-x64-user"
    timeout /t 1
)

if "%sublimeText%"=="true" (
    echo Telechargement de Sublime Text 
    start "" "https://www.sublimetext.com/download_thanks?target=win-x64"
    timeout /t 1
)

if "%perforce%"=="true" (
    echo Telechargement de Perforce 
    start "" "https://www.perforce.com/downloads/perforce/r24.3/bin.ntx64/p4vinst64.msi"
    timeout /t 1
)

if "%unityHub%"=="true" (
    echo Telechargement de Unity Hub 
    start "" "https://public-cdn.cloud.unity3d.com/hub/prod/UnityHubSetup.exe"
    timeout /t 1
)

if "%godot%"=="true" (
    echo Telechargement de Godot 
    start "" "https://github.com/godotengine/godot/releases/download/4.3-stable/Godot_v4.3-stable_win64.exe.zip"
    timeout /t 1
)

if "%githubDesktop%"=="true" (
    echo Telechargement de Github Desktop 
    start "" "https://central.github.com/deployments/desktop/desktop/latest/win32"
    timeout /t 1
)

if "%quit%"=="true" (
    echo.
    echo Vous quitterez le Menu dans 5s 
    timeout /t 5
    exit /b
)

:end
echo Vous avez quitté le menu. 