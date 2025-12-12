#!/bin/ibash
#
# we are ging usere and option to choose between the following option 
#

# lets add some colors as well

RED='\e[31m'
GREEN='\e[32m'
BLUE='\e[34m'
YELLOW='\e[33m'
LIGHTCYAN='\e[96m'
RESET='\e[0m'

while true; do
	echo -e  "${RED}===========================${RESET}" 
	echo -e  "          BASE NET TOOLKIT      "
	echo -e  "${RED}===========================${RESET}"
	echo -e  "${YELLOW} 1) IP Info ${RESET}"
	echo -e  "${YELLOW} 2) Subnet calculation ${RESET}"
	echo -e  "${YELLOW} 3) DNS Lookup  ${RESET}"
	echo -e  "${YELLOW} 4) Network Monitor ${RESET}"
	echo -e  "${YELLOW} 5) Exit ${RESET}"

	echo -ne "${YELLOW} CHOOSE AN OPTION  ${RESET}"
	
	read choice 

	case $choice in 
		1) ./modules/ip-info.sh ;;
		2) ./modules/subnet-calc.sh ;;
		3) ./modules/dns-lookup.sh ;;
		4) ./modules/net-monitor.sh ;;
		5) exit 0;;
		*) echo "Invalid option !" ;;
	esac
done
