#!/bin/bash

# ================================
# System Info Script
# Author: Abhi | aabhidevops
# Description: Shows system health
# ================================

echo "================================"
echo "       SYSTEM INFORMATION       "
echo "================================"

echo ""
echo "Hostname     : $(hostname)"
echo "OS           : $(uname -o)"
echo "Kernel       : $(uname -r)"
echo "Uptime       : $(uptime -p)"
echo "Current User : $(whoami)"
echo "Date & Time  : $(date)"

echo ""
echo "--- CPU ---"
echo "CPU Model    : $(lscpu | grep 'Model name' | awk -F: '{print $2}' | xargs)"

echo ""
echo "--- Memory ---"
free -h | awk 'NR==2{printf "Total: %s | Used: %s | Free: %s\n", $2, $3, $4}'

echo ""
echo "--- Disk Usage ---"
df -h | grep -E '^/dev|^tmpfs' | awk '{print $1, $2, $3, $5}'

echo ""
echo "================================"
echo "         SCRIPT COMPLETE        "
echo "================================"