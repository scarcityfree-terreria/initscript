#!/bin/bash
##
#
#fancy color prompts
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
WHITE='\033[1;37m'
SET='\033[0m'
##

echo -e "${YELLOW}#####################################"

echo -e ${WHITE} update, upgrade, remove no longer needed packages, and install: screen, mono-complete.
echo -e ${PURPLE} packages packages packages
sudo apt-get update; sudo apt-get upgrade -y ; sudo apt-get autoremove -y ; sudo apt-get install screen mono-complete -y
echo -e "${YELLOW}#####################################"

echo -e ${WHITE} adding terrible user

echo -e "${YELLOW}#####################################"
sudo adduser terrible
echo -e "${YELLOW}#####################################"

echo -e ${WHITE} make terrible users home directory structure

echo -e "${YELLOW}#####################################"
sudo -u terrible -c "mkdir -p ~terrible/terr/{src,back/{wads,stage},serv}"

echo -e "${YELLOW}#####################################"
echo -e ${WHITE} get and extract tshock to serv

echo -e "${YELLOW}#####################################"
sudo -u terrible -c "wget -O ~/terr/src/tshock_release.zip https://github.com/NyxStudios/TShock/releases/download/v4.3.11/tshock_release.zip"
sudo -u terrible -c "unzip -x ~terrible/terr/src/tshock_release.zip -d ~terrible/terr/serv/"

echo -e "${YELLOW}#####################################"
echo -e ${WHITE} move run_me to ~terrible/terr/serv/

echo -e "${YELLOW}#####################################"
sudo mv ./run_me ~terrible/terr/serv/

echo -e "${YELLOW}#####################################"
echo -e ${WHITE} link terrible init script to a dir in terrible default path

echo -e "${YELLOW}#####################################"
sudo ln -s  "`(pwd)`/terrible" /usr/sbin/terrible
sudo chmod +x ~terrible/terr/serv/run_me
sudo chmod a+x /usr/sbin/terrible

echo -e "${YELLOW}#####################################"
echo -e ${WHITE} screenrc placement, because screen is better this way

echo -e "${YELLOW}#####################################"
sudo mv ./screenrc ~terrible/.screenrc

echo -e "${YELLOW}#####################################"
echo -e ${WHITE} ensure terrible ownership of terrible_home

echo -e "${YELLOW}#####################################"
sudo chown -vR terrible:terrible ~terrible


echo -e "${YELLOW}#####################################"
echo -e "${YELLOW} you're now ready to initialize your server.  please login as your terrible user and procede to execute the '~/terr/serv/run_me'"
echo -e "${PURPLE} follow all prompts, until the server is started, then type 'off' after the server is running"
echo -e "${WHITE} your last step will be to set your crontab, and run the 'terrible start'  :) "

echo -e "${YELLOW}#####################################"
