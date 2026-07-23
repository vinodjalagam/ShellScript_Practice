#!/bin/bash

#Write a script to check memory usage. If available memory is less than 500MB, send an alert.

THRESHOLD=500  # Threshold in MB

LOG_FILE="$HOME/memory_monitor.log"
# Create the log file if it doesn't exist
touch "$LOG_FILE"
chmod 644 "$LOG_FILE"

#convert to MB

while true; do
    # Get available memory in MB
    AVAILABLE_MEMORY=$(free -m | awk 'NR==2{print $7}')
    
    echo "$(date): Available memory is ${AVAILABLE_MEMORY}MB" >> "$LOG_FILE"

    if [ "$AVAILABLE_MEMORY" -lt "$THRESHOLD" ]; then
        echo "$(date): ALERT! Available memory is below threshold: ${AVAILABLE_MEMORY}MB" >> "$LOG_FILE"
        # You can add additional alerting mechanisms here (e.g., send an email)
    fi

    sleep 60  # Check every 60 seconds
done