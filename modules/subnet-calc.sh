#!/bin/bash


RED='\e[31m'
GREEN='\e[32m'
BLUE='\e[34m'
YELLOW='\e[33m'
LIGHTCYAN='\e[96m'
RESET='\e[0m'



echo -ne "${GREEN}Enter IP/CIDR (e.g., 192.168.1.10/24): ${RESET} "
read input
echo""
ipcalc $input
echo ""

