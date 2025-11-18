#!/bin/bash

# ------------------------------------------------------------
# Script Name : monitor.sh
# Author      : Your Name
# Date        : 2025-11-15
# Purpose     : Logs CPU and memory usage every 5 seconds.
# ------------------------------------------------------------

LOG_FILE="$HOME/monitor.log"
INTERVAL=5

while true; do
    echo "---------------------------------" >> "$LOG_FILE"
    echo "Timestamp: $(date +"%Y-%m-%d %H:%M:%S")" >> "$LOG_FILE"
    
    # CPU usage
    echo "CPU Usage:" >> "$LOG_FILE"
    mpstat 1 1 | grep "all" >> "$LOG_FILE"
    
    # Memory usage
    echo "Memory Usage:" >> "$LOG_FILE"
    free -h >> "$LOG_FILE"
    
    sleep $INTERVAL
done