@ echo off
REM THIS is the gandalf Batch file.
remcopy D:EGS.mp4 C:\ProgramData\Microsoft\Windows\StartMenu\Programs REM This line copys the gandalf file
pause
schtasks /create /tn "gandalf" /F /tr "C:EGS.mp4 " /sc once /st 11:00 REM Secduals an ongoing task that causes the video to play at a specific time.
msg "%username%" ITS SAXS TIME 








exit
