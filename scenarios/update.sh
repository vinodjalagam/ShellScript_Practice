#!/bin/bash
#do update on the remote server
SERVERS=("master@192.168.56.106" "worker@192.168.56.107")

# sudo apt update && sudo apt upgrade -y

for SERVER in "${SERVERS[@]}"
do
    echo "Updating $SERVER"
    ssh "$SERVER" "sudo apt update && sudo apt upgrade -y"

    echo "$SERVER Updated Succesfully"
done