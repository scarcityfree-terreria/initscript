# scarcityfree
###### initscript

### Purpose 
    run the tshock terreria server on linux, because a server shouldn't need windoze.

### Pre-requisites
- debian rules, redhat drools
    - noting this, it is understood that you will be performing these steps for prep on a debian(or)ubuntu system
- add your game-server user, and set-up it's home
- download the latest version of tshock executable
- install the latest mono-complete package set

###### all of the above can be done by running the included (as a user with sudo permissions) 'bash ./install_terrible_server.sh'

###### be sure to follow instructions carefully, and you should be good to go.

### how to use

- clone the script to your terreria server somewhere, make `terrible` executable and place a link to it in your terreria users path.
- run the terrible script with one of the following uptions:
    - start
    - stop
    - restart
    - backup
    - msg | message | say
    - status

- if you'd like to ensure your application is always running, add a cron job to the terrible user's crontab with somehting like the following:
    */15 * * * * terrible start

    - the script is built such that if the server is already running this will simply notice that and do nothing.
    - for now this script expects that you only intend to run 1 terreria world on the server, and it automatically will manipulate the world created in slot 1.
