#!/bin/bash

#write a shell script for weekly log cleanup

SERVER="worker@192.168.56.107"
LOG_DIR="/var/log"

ssh "$SERVER" "find $LOG_DIR -type f -name '*.log' -mtime +7 2>/dev/null"

#ssh "$SERVER" "find $LOG_DIR -type f -name '*.log' -mtime +7 -delete 2>/dev/null"
