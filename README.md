# scarcityfree
###### initscript

### Purpose 
    run the tshock terreria server on linux, because a server shouldn't need windoze.

### Pre-requisites
- debian rules, redhat drools
    - noting this, it is understood that you will be performing these steps for prep on a debian(or)ubuntu system

### how to use

- start with the installer, 
    `bash ./install_terrible_server.sh`
    - this will set the:
        - terreria (terrible) user
        - tshock release zip download/extract
        - init script linked to runable PATH
        - post config steps (manual)

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
