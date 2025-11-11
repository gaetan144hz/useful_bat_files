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

:menu
::initialisation des variables
set "choices="

echo ============================
echo        MENU PRINCIPAL
echo ============================
echo 1. Nettoyer les fichiers temporaires
echo 2. Vider la Corbeille
echo 3. Nettoyer les journaux d'évènements systèmes
echo 4. Défragmentation du disque C:
echo 0. Quitter le script
echo.
set /p choices="Choisissez une ou plusieurs options (séparées par des espaces) [0-4] : "

:: Vérifier si l'utilisateur veut quitter
if "%choices%"=="0" goto quit

echo.
echo ============================
echo Execution des options selectionnees :
echo ============================
echo.

:: Traitement des choix avec appel de fonctions
for %%i in (%choices%) do (
    if "%%i"=="1" call :clean_temp
    if "%%i"=="2" call :clean_bin
    if "%%i"=="3" call :clean_events
    if "%%i"=="4" call :defrag_disk
)

echo ============================
echo Le nettoyage est terminé.
echo Votre PC a été nettoyé avec succès !
echo ============================
echo.
pause
cls
goto menu

:: ========== FONCTIONS ==========

:clean_temp
echo [TEMP] Nettoyage des fichiers temporaires...
del /s /q %temp%\* >nul 2>&1
del /s /q C:\Windows\Temp\* >nul 2>&1
echo        Fichiers temporaires nettoyés.
echo.
exit /b

:clean_bin
echo [BIN] Vider la corbeille...
rd /s /q %systemdrive%\$Recycle.bin >nul 2>&1
echo       Corbeille vidée.
echo.
exit /b

:clean_events
echo [EVENT] Nettoyage des journaux d'événements système...
wevtutil cl Application >nul 2>&1
wevtutil cl System >nul 2>&1
echo         Journaux d'événements nettoyés.
echo.
exit /b

:defrag_disk
echo [DEFRAG] Défragmentation du disque C:...
defrag C: /U /V >nul 2>&1
echo          Défragmentation terminée.
echo.
exit /b

:quit
echo.
echo Fermeture du script dans 3 secondes...
timeout /t 3
exit /b