@echo off 
Rem Camera_checker to check the existence of the Camera driver x64
Rem Camera_driver to store the location of the Camera driver x64
Rem CanBus_checker to check the existence of the CanBus driver x84 |x64

Rem Camera_driver is C:\Program Files\IDS\uEye\ | C:\Program Files (x86)\IDS
Rem CanBus_driver is C:\Program Files\DIFX
Rem R_Script_Checker \R-4.0.3

set Camera_Checker= false
set Canbus_Checker= false
set Rscript_Checker= false
set Qpcr_Checker= false
set Camera_driver64= ""C:\Program Files\IDS""
set Camera_driver86= ""C:\Program Files (x86)\IDS""
set CanBus_driver64= ""C:\Program Files\DIFX""
set CanBus_driver86= ""C:\Program Files (x86)\DIFX""
set R_Script_driver64= ""C:\Program Files\R\R-4.0.3""
set R_Script_driver86= ""C:\Program Files (x86)\R\R-4.0.3""
set R_Library_driver1= ""C:\Users\%USERNAME%\Documents\R\win-library""
set R_Library_driver2= ""%USERPROFILE%\Documents""
set src_dir="%USERPROFILE%\Documents\R\win-library"

if exist %R_Script_driver64%(
	Set Rscript_Checker= true
) else if exist %R_Script_driver86%(
	Set Rscript_Checker= true
) else (
	Rem Install R_Script
)

if exist %Camera_driver64%(
  set Camera_Checker=true
) else if exist %Camera_driver86%(
  set Camera_Checker=true
) else (
  Rem Install Ueye
)

Rem Message to Camera Check
if %Camera_Checker% ==  true (
    echo Ueye is installed!
) else (
    echo Ueye is installing !
)

if exist %CanBus_driver64%(
    Set Canbus_Checker= true
) else if exist %CanBus_driver86%(
    Set Canbus_Checker= true
) else (
	Rem Install Canbus
)

Rem Message to Canbus Check
if %Canbus_Checker%==  true (
    echo Canbus  is installed!
) else (
    echo Canbus is installing !
)


if exist %R_Script_driver64%(
	Set Rscript_Checker= true
) else if exist %R_Script_driver86%(
	Set Rscript_Checker= true
) else (
	Rem Install R_Script
)

if %Rscript_Checker%==  true (
	echo R_Script  is installed!
) else (
	echo R_Script is installing!
)

if exist %R_Library_driver1% (
	Rem The /P switch allows user set the value of a variable entered by the user. 
    Rem C:\Users\%USERNAME%\ -> need user input 
    set Qpcr_Checker=true
) else if exist %R_Library_driver2% (
    echo "hello"
) else (
    echo "No"
)

if %Qpcr_Checker% == true (
    echo R_Library is installed!
) else (
    echo R_Library is installing!
)


