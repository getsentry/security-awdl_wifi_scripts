#!/usr/bin/env bash

RED="\033[31m"
GREEN="\033[32m"
BLUE="\033[34m"
ENDCOLOR="\033[0m"

echo "Please enter the password you use for unlocking the laptop to install the script" 

sudo echo "Installing disable_awdl.sh in your tmp directory. This will run in the background." 

curl -s https://raw.githubusercontent.com/getsentry/security-awdl_wifi_scripts/main/disable_awdl.sh > /tmp/disable_awdl.sh
chmod u+x /tmp/disable_awdl.sh

sudo bash /tmp/disable_awdl.sh > /dev/null &

echo -e "${RED}Please leave this terminal open. The script will run in the background${ENDCOLOR}"
echo "Run the following command to kill the script once you don't need it anymore:"
echo -e "${BLUE}sudo pkill -f /tmp/disable_awdl.sh; sudo rm /tmp/disable_awdl.sh${ENDCOLOR}"