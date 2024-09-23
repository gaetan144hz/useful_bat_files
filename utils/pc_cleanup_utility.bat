@echo off
chcp 65001 > nul
color 5
cls

title PC Cleanup Utility - by g144hz
echo HOST: Run DOWNLOADER on %computername% %date% %time%
echo.
echo ***************************************
echo * PC Cleanup Utility v1.0             *
echo * Nettoyage des fichiers inutiles     *
echo ***************************************
echo.

::initialisation des variables
set "choices="
set "temp=false"
set "bin=false"
set "event=false"
set "defrag=false"
set "quit=false"

:menu
echo ============================
echo        MENU PRINCIPAL
echo ============================
echo 1. Nettoyer les fichierd temporaires
echo 2. Vider la Corbeille
echo 3. Nettoyer les journaux d'évènements systèmes
echo 4. Défragmentation du disque C:
echo 0. Quitter le script
echo.
set /p choices="Choisissez une ou plusieurs options pour télécharger les éxécutables (séparées par des espaces) [1-4] : "

for %%i in (%choices%) do (
    if "%%i"=="0" set "quit=true"
    if "%%i"=="1" set "temp=true"
    if "%%i"=="2" set "bin=true"
    if "%%i"=="3" set "event=true"
    if "%%i"=="4" set "defrag=true"
)

echo Execution des options selectionnees :
if "%temp%"=="true"(
    echo Nettoyage des fichiers temporaires...
    del /s /q %temp%\* >nul 2>&1
    del /s /q C:\Windows\Temp\* >nul 2>&1
    echo Fichiers temporaires nettoyés.
    echo.
) else (
    echo Option de nettoyage des fichiers temporaires DESACTIVE
)

if "%bin%"=="true"(
    :: Fonction pour vider la corbeille
    echo Vider la corbeille...
    rd /s /q %systemdrive%\$Recycle.bin >nul 2>&1
    echo Corbeille vidée.
    echo.
) else (
    echo Option de nettoyage de corbeille DESACTIVE 
)

if "%event%"=="true" (
    :: Nettoyage des journaux d'événements
    echo Nettoyage des journaux d'événements système...
    wevtutil cl Application >nul 2>&1
    wevtutil cl System >nul 2>&1
    echo Journaux d'événements nettoyés.
    echo.
) else (
    echo Option de nettoyage des journaux d'évènements DESACTIVE
)

if "%defrag%"=="true"(
    :: Option de défragmentation (pour les disques durs)
    echo Défragmentation du disque C: (optionnel)...
    defrag C: /U /V >nul 2>&1
    echo Défragmentation terminée.
    echo.
) else (
    echo Option de défragmentation du disque C: DESACTIVE
)

if "%quit%"=="true" (
    echo Fermeture du script dans 5s
    timeout /t 5
    exit /b
)

:: Récapitulatif
echo Le nettoyage est terminé.
echo Votre PC a été nettoyé avec succès !
pause
exit
