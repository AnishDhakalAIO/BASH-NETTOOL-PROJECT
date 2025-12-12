#!/bin/bash 
#

RED='\e[31m'
GREEN='\e[32m'
BLUE='\e[34m'
YELLOW='\e[33m'
LIGHTCYAN='\e[96m'
RESET='\e[0m'


echo 
echo -e "${LIGHTCYAN}===== IP INFORMATION =====${RESET}"
ip -4 address show
echo ""
echo -e "${LIGHTCYAN} DEFAULT GATEWAY : ${RESET}"
ip route | grep default 
echo ""
echo -e "${LIGHTCYAN} ROUTING TABLE : ${RESET}"
ip route show 
echo 


