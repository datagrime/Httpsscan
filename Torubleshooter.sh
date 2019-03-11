#!/bin/bash

checkdomain=ubuntu.com

#Check if local network is up
if ping -q -c 1 -W 1 google.com >/dev/null; then
  echo -e "\033[1mThe network is up"
else
  echo -e "\033[1mThe network is down"
fi


#Scan HTTPS on port 443 
if nc -zw1 $checkdomain 443; then
  echo -e "\033[1mPort scan 443 succesfull, we have connectivity"
else
  echo -e "\033[1mPort scan 443 failed, no connectivity "

fi


#Check and Display IP Tables 
echo -e "\033[1mDisplay Ip Tables"

iptables --list







