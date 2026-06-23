#!/bin/bash

# ================================
# Disk Alert Script
# Author: Abhi | aabhidevops
# Description: Alerts if disk usage
#              exceeds threshold
# ================================

THRESHOLD=80

echo "================================"
echo "       DISK USAGE MONITOR       "
echo "================================"
echo ""

df -h | grep -vE '^Filesystem|tmpfs|udev|loop' | awk '{print $1, $5, $6}' | while read filesystem usage mountpoint; do
    USAGE_NUM=$(echo $usage | tr -d '%')
    
    if [ "$USAGE_NUM" -ge "$THRESHOLD" ] 2>/dev/null; then
        echo "🚨 ALERT: $filesystem at $usage on $mountpoint — CRITICAL!"
    else
        echo "✅ OK   : $filesystem at $usage on $mountpoint"
    fi
done

echo ""
echo "================================"
echo "Threshold set at : ${THRESHOLD}%"
echo "Checked at       : $(date)"
echo "================================"