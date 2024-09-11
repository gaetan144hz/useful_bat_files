@echo off
setlocal enabledelayedexpansion

:create_asset
echo -------------------------------
set /p "ASSET_NAME=Nom des Assets: "
echo -------------------------------

if ASSET_NAME=="" (
    echo "Error: No Name"
) else (
    goto create_folder
)

:create_folder
set "FOLDER=1-MODELS 2-TEXTURES 3-REF 4-EXPORT 5-RENDU"
for %%d in (%ASSET_NAME%) do (
    echo Creation des sous-dossiers pour le dossier %%d
    if not exist "%%d" mkdir "%%d"

    for %%i in (%FOLDER%) do (
        mkdir "%%d\%%i"
        echo sous dossiers "%%d\%%i" crees
    )
)

endlocal
pause