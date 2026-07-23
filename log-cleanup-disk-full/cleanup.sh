SERVER="worker@192.168.56.107"

echo "Check large log files on $SERVER"
ssh "$SERVER" "find / -type f -size +200M 2>/dev/null"
echo "Check large log files on $SERVER completed"