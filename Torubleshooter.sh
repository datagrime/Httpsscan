#!/bin/bash

checkdomain=ubuntu.com
Purp='\033[0;35m'

#Check if local network is up
if ping -q -c 1 -W 1 google.com >/dev/null; then
  echo -e "${Purp}The network is up"
else
  echo -e "${Purp}The network is down"
fi


#Scan HTTPS on port 443 
if nc -zw1 $checkdomain 443; then
  echo -e "${Purp}Port scan 443 succesfull, we have connectivity"
else
  echo -e "${Purp}Port scan 443 failed, no connectivity "

fi


#Check and Display IP Tables 
Echo "Display Ip Tables"

iptables --list







