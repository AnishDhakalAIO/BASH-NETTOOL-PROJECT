#!/bin/bash 



RED='\e[31m'
GREEN='\e[32m'
BLUE='\e[34m'
YELLOW='\e[33m'
LIGHTCYAN='\e[96m'
RESET='\e[0m'

# checking input 


echo -ne "${YELLOW} Enter Domain : ${RESET}"
read Domain

if [[ -z "$Domain" ]]; then 
	echo -e "${RED} === NO DOMAIN ENTERED.... EXITING ${RESET}"
	exit 1 
fi 

echo""
echo""
echo -e "${LIGHTCYAN}===== DNS LOOKUP RESULT =====${RESET}"
echo""


echo -ne "${YELLOW} A Record (IPv4)  : ${RESET}"
dig +short $Domain
echo "" 

echo -e "${YELLOW} A RECORD (IPv6) : ${RESET}"
dig +short  AAAA $Domain 

echo""
echo -ne "${YELLOW} NS Record  ${RESET}"
dig +short NS $Domain 

echo ""
echo -ne "${YELLOW} MX Record ${RESET}"
dig +short MX $Domain 


echo -e "\n${RED} ==================================================== ${RESET}"
