#!/bin/bash

SERVER="worker@192.168.56.107"
THRESHOLD=80
usage=$(ssh "$SERVER" "df / | awk 'NR==2 {print \$5}' | sed 's/%//g'")

echo "Disk usage on $SERVER: $usage%"
if [ "$usage" -gt "$THRESHOLD" ]; then
    echo "Disk usage is above threshold of $THRESHOLD%. Cleaning up disk space..."
else
    echo "Disk usage is below threshold of $THRESHOLD%. No cleanup needed."
fi