@echo off
chcp 65001 > nul
color 5
cls

title PC Delete Temp Files and Folders - by g144hz

echo Nettoyage des fichiers temporaires...
del /s /q %temp%\* >nul 2>&1
del /s /q C:\Windows\Temp\* >nul 2>&1
echo Fichiers temporaires nettoyés.
echo.