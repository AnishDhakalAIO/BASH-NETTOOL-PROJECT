#!/bin/bash 
#
#
RED='\e[31m'
GREEN='\e[32m'
YELLOW='\e[33m'
CYAN='\e[96m'
RESET='\e[0m'


echo -e "${YELLOW} Enter host to monitor  : ${RESET}"
read host 

if [[ -z "$host" ]]; then
	echo -e "${CYAN} NO host entered, exiting ...${RESET}"
	exit 1
fi 

# creating log file and folder 

logdir="/var/log/bash-nettool"
logfile="$logdir/ping.log"

# creating directory if missing 

sudo mkdir -p "$logdir"

# Add session header in log 

echo -e "\n === $(date '+%Y-%m-%d %H:%M:%S') - Pinging $host ===" \ | sudo tee -a "$logfile" > /dev/null

echo -e "${GREEN} Pinging $host ...${RESET}"

ping -c 4 "$host" | sudo tee -a "$logfile" 

echo -e "${GREEN} ping test completed. Log file daved to $logfile ${RESET}"




