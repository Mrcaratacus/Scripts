#!/bin/bash 
#Title........: Blueack.sh
#Description..: This is an all-in-one Bluetooth recon and attacking script.
#Author.......: Mrcaratacus
#Date.........: 20180423
#Version......: 0.3
#Usage........: bash Blueack.sh
#Bash Version.: 4.2 or later
#Acknowledgment: Siren and v1s1t0r 


#TOOLS vars
essential_tools_names=(
		"hciconfig"
		"hcitools"
		"l2ping"
		"blueranger.sh"
		"sdptool"
		"redfang.sh"
]


echo -e "\e[94m"
echo "/\  == \   /\ \       /\ \/\ \   /\  ___\   /\  __ \   /\  ___\   /\ \/ / "    
echo "\ \  __<   \ \ \____  \ \ \_\ \  \ \  __\   \ \  __ \  \ \ \____  \ \  _-. "  
echo " \ \_____\  \ \_____\  \ \_____\  \ \_____\  \ \_\ \_\  \ \_____\  \ \_\ \_\ "  
echo "  \/_____/   \/_____/   \/_____/   \/_____/   \/_/\/_/   \/_____/   \/_/\/_/ "
echo "-----------------------------------------------------------------------------"
echo -e "\e[0m"
echo -e
echo -e "\e[4m"

echo -e "This is an all-in-one Bluetooth recon and attacking script"
echo -e "\e[0m"
#sleep 20s

#Creates the required DIR and NOD for bluesnarfer
#if the reqirements are met for bluesnarfer then conducts a bluetooth device scan.
mkdir -p /dev/bluetooth/rfcomm
mknod -m 666 /dev/bluetooth/rfcomm/0 c 216 0
mknod --mode=666 /dev/rfcomm0 c 216 0

hciconfig hci0 up
echo "Avaliable Bluetooth Devices:"
hcitool scan > Blueack_Res.txt
cat Blueack_Res.txt | grep -v Scanning...

#Prompts the user if they need a rescan (Will only rescan once).

echo "Rescan ?"
echo "y or n"
read -e -n 1 Rescan
if [[ $Rescan = y ]];
then
echo "Avaliable Bluetooth Devices:"
hcitool scan >Blueack_Res.txt
cat Blueack_Res.txt | grep -v Scanning...
fi

#Attempting to search hidden bluetooth devices
echo "Still haven't found your target ?"
echo "y or n"
read -e -n 1 Found
if [[ $Found = y ]];
then
echo "Would you like to scan for hidden devices?"
echo "This may take some time"
echo "y or n"
fi
read -e -n 1 Hidden
if [[ $Hidden = y ]];
then
echo "Hidden Bluetooth Devices:"
fang  >Blueack_Res.txt
cat Blueack_Res.txt | grep -v 
fi



#Prompts the user for the targets MAC address.

echo "Please type the MAC address of the target:"
echo "Example: 00:00:00:00:00:00"
read -e -n 17 btaddress
echo -e

echo "Is $btaddress correct"
echo "y or n"
read -e -n 1 Correct
if [[ $Correct = n ]];
then
echo "Please type the MAC address of the target:"
echo "Example: 00:00:00:00:00:00"
read -e -n 17 btaddress
echo -e
fi

#Sends 5 pings to the target to ensure it is avaliable.

echo "Ping of the target"
l2ping -c 5 $btaddress

sleep 5s
echo -e

#Conducts a service list of the target that also displays the channels associated with each channel.

echo "Service list of the target"
sdptool -i hci0 browse --tree $btaddress

sleep 20s

#Prompts the user for the channel they wish to use at the target.

echo "What channel would you like to use for your attacks ?"
read -e -n 1 BTchan

#If the user would like to know the range of the device they can say yes and a Blueranger will start.

echo "Would you like to find the range of the device from you ?"
echo "Unfortunetly selecting yes will cause you to exit the Blueack script"
echo "y or n"
read -e  range1

if [[ $range1 = y ]];
then
blueranger.sh hci0 $btaddress
fi

#For documentation the script will ask the user if they wish to save the results.txt and then the results file will be deleted.

echo "Would you like to keep the results txt ?"
echo 
echo "y or n"
read -e -n 1 $Del1
if [[ $Del1 = y ]];
then
cp Blueack_Res.txt BLUEACKResults.txt
echo "Warning Rerunning this script in this directory without moving the results file will cause it to be overwritten"
fi

echo "The results file will now be deleted "
rm Blueack_Res.txt

echo "Thank you for using this script"
sleep 2s
exit
