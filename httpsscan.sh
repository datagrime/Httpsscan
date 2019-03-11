#!/bin/bash

checkdomain=ubuntu.com

#Scan HTTPS on port 443 
if nc -zw1 $checkdomain 443; then
  echo "Port scan 443 succesfull, we have connectivity"
else
  echo "Port scan 443 failed, no connectivity "

fi



