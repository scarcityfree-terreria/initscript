#!/bin/bash
echo '#####################################'

echo update, upgrade, remove no longer needed packages, and install: screen, mono-complete.
echo packages packages packages

echo '#####################################'
sudo apt-get update; sudo apt-get upgrade -y ; sudo apt-get autoremove -y ; sudo apt-get install screen mono-complete -y
echo '#####################################'

echo adding terrible user

echo '#####################################'
sudo adduser terrible
echo '#####################################'

echo make terrible users home directory structure

echo '#####################################'
sudo -u terrible -c "mkdir -p ~terrible/terr/{src,back/{wads,stage},serv}"
echo '#####################################'

echo get and extract tshock to serv

echo '#####################################'
sudo -u terrible -c "wget -O ~/terr/src/tshock_release.zip https://github.com/NyxStudios/TShock/releases/download/v4.3.11/tshock_release.zip"
sudo -u terrible -c "unzip -x ~terrible/terr/src/tshock_release.zip -d ~terrible/terr/serv/"
echo '#####################################'

echo move run_me to ~terrible/terr/serv/

echo '#####################################'
sudo mv ./run_me ~terrible/terr/serv/
echo '#####################################'

echo link terrible init script to a dir in terrible default path

echo '#####################################'
sudo ln -s  ~terrible/terr/serv/run_me /usr/sbin/
sudo chmod a+x ~terrible/terr/serv/run_me
sudo chmod a+x /usr/sbin/run_me
echo '#####################################'

echo screenrc placement, because screen is better this way

echo '#####################################'
sudo mv ./screenrc ~terrible/.screenrc
echo '#####################################'

echo ensure terrible ownership of terrible_home

echo '#####################################'
sudo chown -vR terrible:terrible ~terrible

echo '#####################################'
echo '#####################################'
echo '#####################################'

echo "you're now ready to initialize your server.  please login as your terrible user and procede to execute the '~/terr/serv/run_me'"
echo "follow all prompts, until the server is started, then type 'off' after the server is running"
echo "your last step will be to set your crontab, and run the 'terrible start'  :) "

echo '#####################################'
echo '#####################################'
echo '#####################################'



