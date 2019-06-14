#Title........: AUTOVM.ps1
#Description..: My Take on a automagical VM creator for Hyper-v servers and Hyper-v enabled systems
#Author.......: J,Hanscombe
#Date.........: 13/06/2019
#Version......: 0.0
#Usage........: ps */AUTOVM.ps1
#PS Version...: 
#Acknowledgment: Microsoft Docs

#Variables
$VMName = read-host -Promt 'What is the name for this VM?'
$VMRAM = read-host -Promt 'What is the memory allocation for this VM (In Gb eg 1)?'
$BIG = 1073741824
$VMRAMGB = $BIG*$VMRAM
$VHDSIZE = read-host -Prompt 'What is the VHD size (In Gb)'
$VHDSIZEGB = $BIG*$VHDSIZE

#VM variable Info cluster
 $VM = @{
     Name = $VMName
     MemoryStartupBytes = $VMRAMGB
     Generation = 2
     NewVHDPath = "C:\Virtual Machines\$VMName\$VMName.vhdx"
     NewVHDSizeBytes = $VHDSIZEGB
     BootDevice = "VHD"
     Path = "C:\Virtual Machines\$VMName"
     SwitchName = (Get-VMSwitch).Name
 }
 
 echo "'$VM @'"

 Read-host -promt "Is this VM details correct ?"

 