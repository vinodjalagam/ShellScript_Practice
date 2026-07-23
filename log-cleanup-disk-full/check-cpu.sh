SERVER="worker@192.168.56.107"
THRESHOLD=80

usage=$(ssh "$SERVER" "top -bn1 | grep 'Cpu(s)' | awk '{print 100-\$8}' ")

echo "CPU usage on $SERVER: $usage"