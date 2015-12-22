#!/bin/bash
##
#
#fancy color prompts
WHITE='[37m[40m'
SKYBLUE='[36m[40m'
BLUE='[34m[39m'
PURPLE='[35m[39m'
RED='[31m[40m'
ORANGE='[31m[43m'
YELLOW='[33m[40m'
#
#
##

echo -e "${ORANGE}#####################################"

echo -e ${SKYBLUE} update, upgrade, remove no longer needed packages, and install: screen, mono-complete.
echo -e ${PURPLE} packages packages packages
sudo apt-get update; sudo apt-get upgrade -y ; sudo apt-get autoremove -y ; sudo apt-get install screen mono-complete -y
echo -e "${ORANGE}#####################################"

echo -e ${SKYBLUE} adding terrible user

echo -e "${ORANGE}#####################################"
sudo adduser terrible
echo -e "${ORANGE}#####################################"

echo -e ${SKYBLUE} make terrible users home directory structure

echo -e "${ORANGE}#####################################"
sudo -u terrible -c "mkdir -p ~terrible/terr/{src,back/{wads,stage},serv}"

echo -e "${ORANGE}#####################################"
echo -e ${SKYBLUE} get and extract tshock to serv

echo -e "${ORANGE}#####################################"
sudo -u terrible -c "wget -O ~/terr/src/tshock_release.zip https://github.com/NyxStudios/TShock/releases/download/v4.3.11/tshock_release.zip"
sudo -u terrible -c "unzip -x ~terrible/terr/src/tshock_release.zip -d ~terrible/terr/serv/"

echo -e "${ORANGE}#####################################"
echo -e ${SKYBLUE} move run_me to ~terrible/terr/serv/

echo -e "${ORANGE}#####################################"
sudo mv ./run_me ~terrible/terr/serv/

echo -e "${ORANGE}#####################################"
echo -e ${SKYBLUE} link terrible init script to a dir in terrible default path

echo -e "${ORANGE}#####################################"
sudo ln -s  "`(pwd)`/terrible" /usr/sbin/terrible
sudo chmod +x ~terrible/terr/serv/run_me
sudo chmod a+x /usr/sbin/terrible

echo -e "${ORANGE}#####################################"
echo -e ${SKYBLUE} screenrc placement, because screen is better this way

echo -e "${ORANGE}#####################################"
sudo mv ./screenrc ~terrible/.screenrc

echo -e "${ORANGE}#####################################"
echo -e ${SKYBLUE} ensure terrible ownership of terrible_home

echo -e "${ORANGE}#####################################"
sudo chown -vR terrible:terrible ~terrible


echo -e "${ORANGE}#####################################"
echo -e "${ORANGE}#####################################"
echo -e "${ORANGE}#####################################"
echo -e "${ORANGE} you're now ready to initialize your server.  please login as your terrible user and procede to execute the '~/terr/serv/run_me'"
echo -e "${PURPLE} follow all prompts, until the server is started, then type 'off' after the server is running"
echo -e "${SKYBLUE} your last step will be to set your crontab, and run the 'terrible start'  :) "

echo -e "${ORANGE}#####################################"
echo -e "${ORANGE}#####################################"
echo -e "${ORANGE}#####################################"
