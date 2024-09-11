@echo off
REM Marche a suivre si il y a une nouvelle version de Blender
REM Aller sur le lien suivant https://www.blender.org/download/ (c'est à chaque fois la derniere version de blender) et faites click droit sur le bouton de telechargement puis "Copier l'adresse du lien"
REM CopierColler la nouvelle adresse dans la variable "url" ligne 10, vous pouvez ensuite changer la variable "softwareVersion" ligne 11










set "url=http://www.blender.org/download/release/Blender4.2/blender-4.2.1-windows-x64.msi/"
set "softwareVersion=4.2.1"


















Title HOST: Installing Blender %softwareVersion% on %computername% %date% %time%
echo HOST: Installing Blender %softwareVersion% on %computername% %date% %time%

REM Chemin vers le dossier Telechargements
set "downloadFolder=%USERPROFILE%\Downloads"
REM Chemin complet du fichier MSI
set "msiFile=%downloadFolder%\blender-%softwareVersion%-windows-x64.msi"

:downloads
start "" %url%

:askUser
REM Demander a l'utilisateur si le fichier est telecharge
echo Avez-vous telecharge le fichier dans le dossier Telechargements? (O/N)
choice /c ON /m "Appuyez sur O pour Oui ou N pour Non."

REM Si l'utilisateur repond Oui
if %errorlevel%==1 (
    REM Verifier si le fichier blender.msi existe
    if exist "%msiFile%" (
        echo Le fichier %msiFile% est present dans Telechargements.

        REM Exeuction de l'installation du fichier MSI - C\Users\gaeta\Downloads\blender-4.2.1-windows-x64.msi
        msiexec.exe /i "%msiFile%"

        echo Installation terminee. Fermeture du script dans 5s
        echo by g144hz 
        echo github: https://github.com/gaetan144hz
        timeout 5
        exit /b 
    ) else (
        echo Le fichier blender-%softwareVersion%-windows-x64.msi n'a pas ete trouve dans Telechargements.
    )
) else (
    echo Veuillez telecharger le fichier blender-%softwareVersion%-windows-x64.msi, puis repondez Oui pour continuer.
    goto askUser
)

rem Debugging DONT TOUCH!!!!
rem if errorlevel 1 (
rem     echo ERROR OCCURRED - %ERRORLEVEL%
rem     pause
rem     exit /b
rem )

pause





















rem by g144hz