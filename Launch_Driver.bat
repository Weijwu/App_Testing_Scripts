Rem Launch the driver store in the same folder as the batch 
pushd %~dp0
uEye64_49400_WHQL.exe
CP210xVCPInstaller_x64.exe
popd
exit /B 0