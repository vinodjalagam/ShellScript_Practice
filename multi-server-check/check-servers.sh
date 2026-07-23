#!/usr/bin/env bash

set -euo pipefail

# Path to private key (first arg) or default to user's id_rsa
KEY="${1:-$HOME/.ssh/id_rsa}"

servers=("master@192.168.56.106" "master@192.168.56.107")

for server in "${servers[@]}"; do
    echo "Checking server: $server"
    if ssh -i "$KEY" -o BatchMode=yes -o ConnectTimeout=5 "$server" 'echo connected' >/dev/null 2>&1; then
        echo "Passwordless SSH OK: $server"
    else
        echo "Passwordless SSH failed: $server (will not prompt for password)"
    fi
done

