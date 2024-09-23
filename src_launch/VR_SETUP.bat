echo Lancement du Setup VR

start "Microsoft Edge" "C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe"
echo ------------------------
echo Lancement Microsoft Edge
echo ------------------------
timeout /t 2

start "Perforce" "C:\Program Files\Perforce\p4v.exe"
echo ------------------
echo Lancement Perforce
echo ------------------
timeout /t 2

start "OculusApp" "D:\Oculus\Support\oculus-client\OculusClient.exe"
echo -------------------
echo Lancement de Oculus
echo -------------------
timeout /t 2

start "Steam" "D:\steam\steam.exe"
echo ------------------
echo Lancement de steam
echo ------------------
timeout /t 2

start "Weairdzard Project" "D:\P4\JV2_JV3_2324\VR_Tuto\Weirdzard"
echo --------------------------
echo Lancement du Projet Unreal
echo --------------------------
timeout /t 2

goto end

:end
echo ----------------
echo FIN DU PROCESSUS
echo ----------------
exit /b