#!/usr/bin/env bash

set -euo pipefail

echo "Disk"
# df -h --output=source,size,used,avail,pcent,target | grep -E '^/dev' || true
df -h | grep /abc

echo "Memory"
free -m | awk 'NR==2{printf "Memory: %sMiB used / %sMiB total (%.2f%%)\n", $3, $2, $3*100/$2 }'
