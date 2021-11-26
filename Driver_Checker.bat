@echo off 
set Camera_driver= "C:\Program Files\IDS\uEye\Program\uEyeCockpit.exe"
set R_Script_driver= "C:\Program Files\R\R-4.0.3\bin"
set CanBus_driver= "C:\Program Files\DIFX"
set R_Library_driver= "C:\Users\%USERNAME%\Documents\R\win-library"

IF EXIST %CanBus_driver% (
    echo 'CanBus_driver File EXIST!'
) ELSE (
    echo 'CanBus_driver File missing!'
	cmd.exe /c "%Programfiles(x86)%\CP210xVCPInstaller_x64.exe"  
)

timeout /t 8 /nobreak

IF EXIST %R_Script_driver% (
    echo 'R_Script_driver File EXIST!'
) ELSE (
    echo 'R_Script_driver File missing!'
	cmd.exe /c "%Programfiles(x86)%\R-4.0.3-win.exe"
)
timeout /t 8 /nobreak

IF EXIST %R_Library_driver% (
    echo 'R_Library_driver File EXIST!'
) ELSE (
    echo 'R_Library_driver File missing!'
 rem copy %Programfiles(x86)%\iGenePad_SetUp\R\. %USERPROFILE%\Documents\R\.
	xcopy /s/E "%Programfiles(x86)%\iGenePad_SetUp\R\*" "%USERPROFILE%\Documents\R\*"
)
timeout /t 8 /nobreak

IF EXIST %Camera_driver% (
    echo 'Camera_driver File EXIST!'
) ELSE (
    echo 'Camera_driver File missing!'
	cmd.exe /c "%Programfiles(x86)%\uEye64_49400_WHQL.exe" 
)
timeout /t 8 /nobreak