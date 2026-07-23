#!/bin/bash
#Check whether a container is running.
#If not, restart it.
 
CONTAINER_NAME="nginx"  # Replace with your container name

STATUS=$(docker inspect -f '{{.State.Running}}' "$CONTAINER_NAME" 2>/dev/null || echo "not found")

if [ "$STATUS" = "true" ]; then
    echo "Container $CONTAINER_NAME is running."
else
    echo "Container $CONTAINER_NAME is not running. Restarting..."
    docker restart "$CONTAINER_NAME"
fi