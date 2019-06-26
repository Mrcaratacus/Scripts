#Title........: AUTOVM.ps1
#Description..: My Take on a automagical VM creator for Hyper-v servers and Hyper-v enabled systems
#Author.......: J,Hanscombe
#Date.........: 13/06/2019
#Version......: 0.0
#Usage........: ps */AUTOVM.ps1
#PS Version...: 4.0> 
#Acknowledgment: Microsoft Docs

$VMName = read-host -Promt 'What is the name for this VM?'
$VMRAM = read-host -Promt 'What is the memory allocation for this VM (In Gb eg 1)?'
$VHDSIZE = read-host -Promt 'What is the VHD size (In Gb)
$OSAV =@(
'Windows Server 2012'
'Windows Server 2016'
'Windows 10'
'Centos7'
'Ubuntu Server'
)
$OSAV
$OS = read-host -Promt 'Which OS would you like installed ? ' 

Switch ('$OS') (

Win2012 ($VDD =Win2012' ;Break)
Win2016 ($VDD =Win2016' ;Break)
Win10 ($VDD =Win10' ;Break)
Centos7 ($VDD =Centos7' ;Break)
UbuntuSer ($VDD =UbuntuSer' ;Break)
)

#VM array
$VM = @{ Name = $VMName 
MemoryStartupBytes = "'$VMRAM'Gb"
Generation = 2 
NewVHDPath = "C:\Virtual Machines\$VMName\$VMName.vhdx" NewVHDSizeBytes = "'$VHDSIZE'Gb"
BootDevice = "CD" Path = "\ISO\'$VDD'.iso
#SwitchName = (Get-VMSwitch).Name } 
#NewDiscDrive =(Set-VMDvdDrive -VMName '$VMNAME' -Path \ISO\'$VDD".iso - AllowUnverifiedPaths )

echo "'$VM @'" Read-host -promt "Is this VM details correct ?"
