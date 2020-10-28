#Install-Module -Name Microsoft.PowerShell.Archive -scope CurrentUser -force

Expand-Archive -Path 'Notepad++.zip' -DestinationPath Notepad++P
Expand-Archive -Path 'GoogleChromePortable.zip' -DestinationPath Google_ChromeP

$Dir = PWD
$SourceFileLocation = "$Dir\Notepad++P\notepad++.exe"
$ShortcutLocation = 'Notepad++P.lnk'
#New-Object : Creates an instance of a Microsoft .NET Framework or COM object.
#-ComObject WScript.Shell: This creates an instance of the COM object that represents the WScript.Shell for invoke CreateShortCut
$WScriptShell = New-Object -ComObject WScript.Shell
$Shortcut = $WScriptShell.CreateShortcut($ShortcutLocation)
$Shortcut.TargetPath = $SourceFileLocation
#Save the Shortcut to the TargetPath
$Shortcut.Save()

$SourceFileLocation = "$Dir\Google_ChromeP\GoogleChromePortable\GoogleChromePortable.exe"
$ShortcutLocation = 'GoogleChromePortable.lnk'
#New-Object : Creates an instance of a Microsoft .NET Framework or COM object.
#-ComObject WScript.Shell: This creates an instance of the COM object that represents the WScript.Shell for invoke CreateShortCut
$WScriptShell = New-Object -ComObject WScript.Shell
$Shortcut = $WScriptShell.CreateShortcut($ShortcutLocation)
$Shortcut.TargetPath = $SourceFileLocation
#Save the Shortcut to the TargetPath
$Shortcut.Save()

Move-Item -Path GoogleChromePortable.lnk  -Destination "C:\Users\$env:UserName\Desktop\"
Move-Item -Path  Notepad++P.lnk -Destination "C:\Users\$env:UserName\Desktop\"
Remove-Item -Path  Notepad++P.lnk -Force
Remove-Item -Path GoogleChromePortable.lnk -Force
Remove-Item -Path SoftwareInstaller.ps1 -Force -Confirm
