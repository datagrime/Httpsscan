#!/bin/bash

checkdomain=ubuntu.com

#Check if local network is up
if ping -q -c 1 -W 1 google.com >/dev/null; then
  echo "The network is up"
else
  echo "The network is down"
fi


#Scan HTTPS on port 443 
if nc -zw1 $checkdomain 443; then
  echo "Port scan 443 succesfull, we have connectivity"
else
  echo "Port scan 443 failed, no connectivity "

fi


#Check and Display IP Tables 
Echo "Display Ip Tables"

iptables --list

fi 






