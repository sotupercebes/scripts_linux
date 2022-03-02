#!/bin/bash

#######################FUNCTIONS###############################################################
function pause() {
    read -s -n 1 -p "Press any key to continue . . ."
    echo ""
}
######################FUNCTIONS#################################################################

######################COLOURS################
TEXT_RESET='\e[0m'
TEXT_YELLOW='\e[0;33m'
TEXT_RED='\e[1;31m'
TEXT_BLUE='\e[1;34m'

#######################COLOURS###################
sudo apt-get update
echo -e $TEXT_YELLOW
echo 'APT update finished...'
echo -e $TEXT_RESET

sudo apt-get dist-upgrade -y
echo -e $TEXT_YELLOW
echo 'APT distributive upgrade finished...'
echo -e $TEXT_RESET

sudo apt-get upgrade -y
echo -e $TEXT_YELLOW
echo 'APT upgrade finished...'
echo -e $TEXT_RESET
sudo apt-get autoremove -y
echo -e $TEXT_YELLOW
echo 'APT auto remove finished...'
echo -e $TEXT_RESET
clear
echo -e $TEXT_BLUE
echo 'Server is updated... Moving on'
pause
###################################UPDATE FINISHED################################################

###############CREATE ADMINISTRATOR###############################################################
clear
echo -e $TEXT_RED
echo 'Create server administrator'
echo -e $TEXT_RESET

echo -e $TEXT_RESETecho -e $TEXT_YELLOW
echo 'Adding new administrator: Please input username.'
echo -e $TEXT_RESET
read -p 'Username:' username
echo -e $TEXT_YELLOW
echo 'Administrator created. Please type in password:'
echo -e $TEXT_RESET
read -sp 'Password:' password
sudo useradd -m -p $password -s /bin/bash $username
echo
clear
echo -e $TEXT_BLUE
echo Thank you $username, we now have your login details.
echo -e $TEXT_RESET
usermod -aG sudo $username
pause

sudo apt-get update
pause



