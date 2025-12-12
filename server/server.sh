#!/bin/bash
#
# port number to listen on 

port=8080

echo " Starting simple TCP services on port $port..."

# infinity loop to keep the server running 

while true; do 
	echo -e "Hello from Bash TCP server!\nTime: $(date)" | nc -l -p $port
done
