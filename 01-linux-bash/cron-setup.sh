#!/bin/bash

# ================================
# Cron Job Setup Script
# Author: Abhi | aabhidevops
# Description: Schedules monitoring
#              and backup scripts
# ================================

SCRIPT_DIR="$HOME/devops-portfolio/01-linux-bash"

echo "================================"
echo "       CRON JOB SETUP           "
echo "================================"
echo ""

# Define cron jobs
DISK_CRON="*/5 * * * * $SCRIPT_DIR/disk-alert.sh >> $HOME/logs/disk.log 2>&1"
PROCESS_CRON="*/10 * * * * $SCRIPT_DIR/process-monitor.sh >> $HOME/logs/process.log 2>&1"
BACKUP_CRON="0 2 * * * $SCRIPT_DIR/backup.sh >> $HOME/logs/backup.log 2>&1"

# Create logs directory
mkdir -p "$HOME/logs"
echo "✅ Logs directory created: $HOME/logs"

# Add cron jobs
(crontab -l 2>/dev/null; echo "$DISK_CRON") | crontab -
echo "✅ Disk monitor scheduled — every 5 minutes"

(crontab -l 2>/dev/null; echo "$PROCESS_CRON") | crontab -
echo "✅ Process monitor scheduled — every 10 minutes"

(crontab -l 2>/dev/null; echo "$BACKUP_CRON") | crontab -
echo "✅ Backup scheduled — daily at 2:00 AM"

echo ""
echo "--- Current Crontab ---"
crontab -l

echo ""
echo "================================"
echo "Cron setup complete: $(date)"
echo "================================"