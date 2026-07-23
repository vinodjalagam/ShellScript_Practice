#!/bin/bash

#Find files larger than 500MB created in the last 7 days.

echo "Searching for files larger than 500MB created in the last 7 days..."

find / -type f -size +500M -mtime -7 2>/dev/null

echo "Search completed."