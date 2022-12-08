#!/usr/bin/env bash

echo "Please enter the password you use for unlocking the laptop to install the script" 

sudo echo "Installing disable_awdl.sh in your tmp directory. This will run in the background." 

curl -s https://raw.githubusercontent.com/getsentry/security-awdl_wifi_scripts/main/disable_awdl.sh > /tmp/disable_awdl.sh
chmod u+x /tmp/disable_awdl.sh

sudo bash /tmp/disable_awdl.sh > /dev/null &

echo "Run the following command to kill the script once you don't need it anymore:"
echo "sudo pkill -f /tmp/disable_awdl.sh; sudo rm /tmp/disable_awdl.sh"