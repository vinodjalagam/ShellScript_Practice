#!/bin/bash

SOURCE="/home/jenkins/shell-demo/"
BACKUP_DIR="/home/jenkins/backup"

mkdir -p "$BACKUP_DIR"

DATE=$(date +%Y%m%d_%H%M%S)

tar -czf "$BACKUP_DIR/backup_$DATE.tar.gz" -C "$SOURCE" .


echo "Backup completed Successfully: $BACKUP_DIR/backup_$DATE.tar.gz"  

