#!/bin/bash

# ================================
# Process Monitor Script
# Author: Abhi | aabhidevops
# Description: Checks if critical
#              services are running
# ================================

SERVICES=("docker" "ssh" "cron")
LOGFILE="process-monitor.log"

echo "================================"
echo "      PROCESS MONITOR           "
echo "================================"
echo ""

for SERVICE in "${SERVICES[@]}"; do
    if pgrep -x "$SERVICE" > /dev/null 2>&1; then
        STATUS="✅ RUNNING"
    else
        STATUS="🚨 NOT RUNNING"
    fi
    
    echo "$STATUS : $SERVICE"
    echo "$(date) | $SERVICE | $STATUS" >> $LOGFILE
done

echo ""
echo "--- Log saved to: $LOGFILE ---"
echo "================================"
echo "Checked at: $(date)"
echo "================================"

echo ""
echo "--- Last 5 log entries ---"
tail -5 $LOGFILE