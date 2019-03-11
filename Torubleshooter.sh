#!/bin/bash

checkdomain=ubuntu.com

#Check if local network is up
if ping -q -c 1 -W 1 google.com >/dev/null; then
  echo -e "\033[1mThe network is up\033[0m"
else
  echo -e "\033[1mThe network is down\033[0m"
fi

case "$(curl -s --max-time 2 -I http://google.com | sed 's/^[^ ]*  *\([0-9]\).*/\1/; 1q')" in
  [23]) 
  echo "\033[1mHTTP connectivity is up\033[0m";;
  5) echo "033[1mThe web proxy won't let us through\033[0m";;
  *) echo "033[1mThe network is down or very slow\033[0m";;
fi 

#Scan HTTPS on port 443 
if nc -zw1 $checkdomain 443; then
  echo -e "\033[1mPort scan 443 succesfull, we have connectivity\033[0m"
else
  echo -e "\033[1mPort scan 443 failed, no connectivity\033[0m"

fi


#Check and Display IP Tables 
echo -e "\033[1mDisplay Ip Tables\033[0m"
tput sgr0 #Reset text attributes to normal

iptables --list







