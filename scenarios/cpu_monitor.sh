SERVER="worker@192.168.56.107"
THRESHOLD=80

LOG_FILE="$HOME/cpu_monitor.log"
# Create the log file if it doesn't exist
touch "$LOG_FILE"
chmod 644 "$LOG_FILE"

while true; do
    CPU_USAGE=$(ssh "$SERVER" "top -bn1 | grep 'Cpu(s)' | awk '{print 100-\$8}'") 
    CPU_USAGE_INT=${CPU_USAGE%.*}   # Convert to integer for comparison
    echo "$(date): CPU usage on $SERVER is $CPU_USAGE%" >> "$LOG_FILE"

    if [ "$CPU_USAGE_INT" -gt "$THRESHOLD" ]; then
        echo "$(date): CPU usage on $SERVER is above threshold: $CPU_USAGE%" >> "$LOG_FILE"
    fi

    sleep 60  # Check every 60 seconds
done