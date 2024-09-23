@echo off
setlocal 

goto menu

:menu
echo ----------------------------------------------------------------
set /p ANJV="Tape 'anim' ou 'jv' pour choisi une des 2 arborescences: "
echo ----------------------------------------------------------------

if "%ANJV%"=="jv" (

    echo Tu as choisi l'arborescence 'Jeu Video'
    echo ---------------------------------------

) else if "%ANJV%"=="anim" (

    echo Tu as choisi l'arborescence 'Animation'
    echo ---------------------------------------

) else (

    echo ERROR: Assure toi d'avoir bien taper 'anim' ou 'jv' en fonction de l'arborescences que tu souhaite !
    echo ----------------------------------------------------------------------------------------------------
    pause
    goto menu

)

:projectSetup
set /p PROJECT_NAME="Entrer le nom du projet: "
if "%PROJECT_NAME%"=="" (

    echo ERROR: Vous devez entrer un nom de projet !
    goto projectSetup

)
mkdir "%PROJECT_NAME%"
cd "%PROJECT_NAME%"
if "%ANJV%"=="jv" (
    goto jvFolder
) else if "%ANJV%"=="anim" (
    goto animFolder
)

:jvFolder
mkdir "1-GameDesign\General\Intentions"
mkdir "1-GameDesign\General\Pitch"
mkdir "1-GameDesign\General\GDD"
mkdir "1-GameDesign\General\Vision Design"

mkdir "1-GameDesign\Core\3C"
mkdir "1-GameDesign\Core\3C\Character"
mkdir "1-GameDesign\Core\3C\Camera"
mkdir "1-GameDesign\Core\3C\Control"

mkdir "1-GameDesign\Core\Mechanics"

mkdir "1-GameDesign\Core\NPC\Xxxx"
mkdir "1-GameDesign\Core\NPC\NarrativeNPC"
mkdir "1-GameDesign\Core\NPC\Enemies"

mkdir "1-GameDesign\Narration\Story\Storyboard"
mkdir "1-GameDesign\Narration\MissionFlow"
mkdir "1-GameDesign\Narration\MissionBrief"
mkdir "1-GameDesign\Narration\NarativeFlow"

mkdir "2-Art\Character"
mkdir "2-Art\Environnement"
mkdir "2-Art\VFX"
mkdir "2-Art\Reference"

mkdir "3-LevelDesign\MacroLD"
mkdir "3-LevelDesign\Levels\Level_Xxxx"

mkdir "4-SoundDesign\Listing"
goto end

:animFolder
set AN_LIST=Characters Props Ressources Images
for %%a in (%AN_LIST%) do (
    mkdir %%a
    echo %%a
)

mkdir "Characters\Xxxx"
echo Xxxx

mkdir "Characters\Xxxx\Maya\Ani"
mkdir "Characters\Xxxx\Maya\Rig"
echo Maya\Ani
echo Maya\Rig

mkdir "Characters\Xxxx\Maya\Rig\Blast"
mkdir "Characters\Xxxx\Maya\Rig\Export"
mkdir "Characters\Xxxx\Maya\Rig\Wip"
echo Rig\Blast
echo Rig\Export
echo Rig\Wip

mkdir "Characters\Xxxx\Maya\Rig\Export\anim"
mkdir "Characters\Xxxx\Maya\Rig\Export\fbx"
echo Rig\Export\anim
echo Rig\Export\fbx

mkdir "Characters\Xxxx\Maya\Ani\Locomotion"
echo Ani\Locomotion

mkdir "Characters\Xxxx\Maya\Ani\Locomotion\Attack"
mkdir "Characters\Xxxx\Maya\Ani\Locomotion\Fly"
mkdir "Characters\Xxxx\Maya\Ani\Locomotion\Ground"
mkdir "Characters\Xxxx\Maya\Ani\Locomotion\Swim"
echo Locomotion\Attack
echo Locomotion\Fly
echo Locomotion\Ground
echo Locomotion\Swim

mkdir "Characters\Xxxx\Maya\Ani\Locomotion\Ground\Crouch"
mkdir "Characters\Xxxx\Maya\Ani\Locomotion\Ground\Idle"
mkdir "Characters\Xxxx\Maya\Ani\Locomotion\Ground\Run"
mkdir "Characters\Xxxx\Maya\Ani\Locomotion\Ground\Turn"
echo Ground\Crouch
echo Ground\Idle
echo Ground\Run
echo Ground\Turn

mkdir "Characters\Xxxx\Maya\Ani\Locomotion\Ground\Crouch\Ready\Blast"
mkdir "Characters\Xxxx\Maya\Ani\Locomotion\Ground\Crouch\Ready\Export"
mkdir "Characters\Xxxx\Maya\Ani\Locomotion\Ground\Crouch\Ready\Wip"
echo Crouch\Ready\Blast
echo Crouch\Ready\Export
echo Crouch\Ready\Wip

mkdir "Characters\Xxxx\Maya\Ani\Locomotion\Ground\Idle\Ready\Blast"
mkdir "Characters\Xxxx\Maya\Ani\Locomotion\Ground\Idle\Ready\Export"
mkdir "Characters\Xxxx\Maya\Ani\Locomotion\Ground\Idle\Ready\Wip"
echo Idle\Ready\Blast
echo Idle\Ready\Export
echo Idle\Ready\Wip

mkdir "Characters\Xxxx\Maya\Ani\Locomotion\Ground\Run\Ready\Blast"
mkdir "Characters\Xxxx\Maya\Ani\Locomotion\Ground\Run\Ready\Export"
mkdir "Characters\Xxxx\Maya\Ani\Locomotion\Ground\Run\Ready\Wip"
echo Run\Ready\Blast
echo Run\Ready\Export
echo Run\Ready\Wip

mkdir "Characters\Xxxx\Maya\Ani\Locomotion\Ground\Turn\Ready\Blast"
mkdir "Characters\Xxxx\Maya\Ani\Locomotion\Ground\Turn\Ready\Export"
mkdir "Characters\Xxxx\Maya\Ani\Locomotion\Ground\Turn\Ready\Wip"
echo Turn\Ready\Blast
echo Turn\Ready\Export
echo Turn\Ready\Wip

mkdir "Characters\Xxxx\Maya\Ani\Locomotion\Ground\Crouch\Ready\Export\anim"
mkdir "Characters\Xxxx\Maya\Ani\Locomotion\Ground\Crouch\Ready\Export\fbx"
echo Crouch\Ready\Export\anim
echo Crouch\Ready\Export\fbx

mkdir "Characters\Xxxx\Maya\Ani\Locomotion\Ground\Idle\Ready\Export\anim"
mkdir "Characters\Xxxx\Maya\Ani\Locomotion\Ground\Idle\Ready\Export\fbx"
echo Idle\Ready\Export\anim
echo Idle\Ready\Export\fbx

mkdir "Characters\Xxxx\Maya\Ani\Locomotion\Ground\Run\Ready\Export\anim"
mkdir "Characters\Xxxx\Maya\Ani\Locomotion\Ground\Run\Ready\Export\fbx"
echo Run\Ready\Export\anim
echo Run\Ready\Export\fbx

mkdir "Characters\Xxxx\Maya\Ani\Locomotion\Ground\Turn\Ready\Export\anim"
mkdir "Characters\Xxxx\Maya\Ani\Locomotion\Ground\Turn\Ready\Export\fbx"
echo Turn\Ready\Export\anim
echo Turn\Ready\Export\fbx
goto end

::echo script path: %~dp0
:end
echo ---------------------------------------------------------
echo Arborescence de projet "%PROJECT_NAME%" cree avec succes!
echo ---------------------------------------------------------
pause
exit /b