@rem ----[ This code block detects if the script is being running with admin PRIVILEGES If it isn't it pauses and then quits]-------
@echo off
NET SESSION >nul 2>&1
IF %ERRORLEVEL% EQU 0 (
    ECHO Administrator PRIVILEGES Detected! 
) ELSE (
   echo ######## ########  ########   #######  ########  
   echo ##       ##     ## ##     ## ##     ## ##     ## 
   echo ##       ##     ## ##     ## ##     ## ##     ## 
   echo ######   ########  ########  ##     ## ########  
   echo ##       ##   ##   ##   ##   ##     ## ##   ##   
   echo ##       ##    ##  ##    ##  ##     ## ##    ##  
   echo ######## ##     ## ##     ##  #######  ##     ## 
   echo.
   echo.
   echo ####### ERROR: ADMINISTRATOR PRIVILEGES REQUIRED #########
   echo This script must be run as administrator to work properly!  
   echo If your seeing this then right-click the batch icon and select "Run As Administrator".
   echo The Script will now TERMINATE
   echo ##########################################################
   echo.
   PAUSE
   EXIT /B 1
)
@echo OFF
REM This Script Copys the USER data From an old HDD then merges the moved files with the new Users data
set /p DL="Old drive Letter: "
XCOPY %DL%:\Users C:\OL /s /i
Echo Copy Complete now organising the files
Pause

REM Moves the copied data into the current user home folders
set /p OUN="Old Username: "
move C:\OL\Users\%OUN%\Music\* C:\Users\%USERNAME%\Music
move C:\OL\Users\%OUN%\Documents\* C:\Users\%USERNAME%\Documents
move C:\OL\Users\%OUN%\Pictures\* C:\Users\%USERNAME%\Pictures
move C:\OL\Users\%OUN%\Downloads\* C:\Users\%USERNAME%\Downloads
move C:\OL\Users\%OUN%\Videos\* C:\Users\%USERNAME%\Videos
move C:\OL\Users\%OUN%\Desktop\* C:\Users\%USERNAME%\Desktop
Echo Move Complete
Echo Please check the files have been moved correctly
Pause
Echo Hopefully that is all working , this script should have copied the files to the local HDD then moved the copied files to there respective location
pause
Echo Will now delete the Temp files

REM removed the Temp Files
RMDIR /s C:\OL
Echo that is the end of this Script
Pause
Exit
