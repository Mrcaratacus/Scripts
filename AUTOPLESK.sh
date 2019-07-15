#!/bin/bash 
#Title........: AUTOPLESK.sh
#Description..: Automatically installs and activates a trial of PLESK on linux based systems.
#Author.......: JHanscombe
#Date.........: 20190711
#Version......: 0.1
#Usage........: bash AUTOPLESK.sh
#Bash Version.: 4.2 or later

echo -e
echo -e
echo -e

echo " _______  __   __  _______  _______  _______  ___      _______  _______  ___   _ "
echo "|   _   ||  | |  ||       ||       ||       ||   |    |       ||       ||   | | |"
echo "|  |_|  ||  | |  ||_     _||   _   ||    _  ||   |    |    ___||  _____||   |_| |"
echo "|       ||  |_|  |  |   |  |  | |  ||   |_| ||   |    |   |___ | |_____ |      _|"
echo "|       ||       |  |   |  |  |_|  ||    ___||   |___ |    ___||_____  ||     |_ "
echo "|   _   ||       |  |   |  |       ||   |    |       ||   |___  _____| ||    _  |"
echo "|__| |__||_______|  |___|  |_______||___|    |_______||_______||_______||___| |_|"

echo "---------------------------------------------------------------------------------"
echo -e

echo -e "Automatically installs and activates a trial of PLESK on linux based systems."

sleep 2s 

echo "Please Standby whilst plesk is downloaded and Installed"
echo -e
# Plesk Installation:

#wget http://autoinstall.plesk.com/plesk-installer
#chmod +x plesk-installer
#./plesk-installer --all-versions
sh <(curl https://autoinstall.plesk.com/one-click-installer || wget -O - https://autoinstall.plesk.com/one-click-installer)

#Activation Information

echo "Plesk has been sucessfully installed please answer the following questions:"
echo -e
echo "Please enter the name for the plesk registration"
read -e name
echo -e
echo "Please enter the Email Address for plesk registration"
read -e Email

echo "You have entered the following information:"
echo "Name: $name"
echo "Email Address: $Email"
echo -e
echo "Is this Correct ?"
echo "y or n"
read -e -n 1 CINFO
if [[ $CINFO = y ]];
then
echo "Thank you for confirming please standby"
else
echo "Please enter the name for the plesk registration"
read -e $name
echo "Please enter the Email Address for plesk registration"
read -e $Email
fi

echo -e 

#Random string generator for password:


read Password < <(LC_ALL=C tr -dc 'A-Za-z0-9!"#$%&'\''()*+,-./:;<=>?@[\]^_`{|}~' </dev/urandom | head -c 13) 

# Once plesk is installed

#plesk bin init_conf --init -name "$name" -email "$Email" \ -passwd "$Password" -license_agreed true -trial_license true

echo "Plesk has been Sucessfully Activiated"
echo -e
echo "Please see the further information below:"
echo -e
echo "This is the Plesk login infomation "
echo "The Username is: $name"
echo "The password is: $Password"

#read login < <(plesk login)

echo -e
echo "You can also login via these one time URLS"
echo "$login"

sleep 3s

echo "Thank you for using AUTOPLESK have a good day"
exit
