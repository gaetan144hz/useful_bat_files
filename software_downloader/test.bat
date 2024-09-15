@echo off
title Menu de sélection multiple
:menu
cls
echo ================================
echo      MENU DE SELECTION
echo ================================
echo.
echo 1. Dire Bonjour
echo 2. Afficher la date et l'heure
echo 3. Lancer le calculateur
echo 4. Ouvrir le Bloc-notes
echo 5. Quitter
echo.
set /p choix="Choisissez une ou plusieurs options (ex: 13 pour option 1 et 3) : "

:: Vérifie si l'utilisateur a choisi l'option 1
echo %choix% | findstr "1" >nul
if not errorlevel 1 goto option1

:: Vérifie si l'utilisateur a choisi l'option 2
echo %choix% | findstr "2" >nul
if not errorlevel 1 goto option2

:: Vérifie si l'utilisateur a choisi l'option 3
echo %choix% | findstr "3" >nul
if not errorlevel 1 goto option3

:: Vérifie si l'utilisateur a choisi l'option 4
echo %choix% | findstr "4" >nul
if not errorlevel 1 goto option4

:: Vérifie si l'utilisateur a choisi l'option 5
echo %choix% | findstr "5" >nul
if not errorlevel 1 goto quit

goto fin

:option1
echo Bonjour !
pause
goto menu

:option2
echo La date et l'heure actuelles sont :
echo %date% %time%
pause
goto menu

:option3
start calc.exe
echo Le calculateur a été lancé.
pause
goto menu

:option4
start notepad.exe
echo Le Bloc-notes a été lancé.
pause
goto menu

:quit
echo Au revoir !
pause
exit

:fin
echo Option invalide, réessayez.
pause
goto menu
