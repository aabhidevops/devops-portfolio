#!/bin/bash

# ================================
# Backup Script
# Author: Abhi | aabhidevops
# Description: Compresses a folder
#              with timestamp backup
# ================================

SOURCE_DIR="${1:-$HOME/devops-portfolio}"
BACKUP_DIR="$HOME/backups"
TIMESTAMP=$(date +%Y%m%d_%H%M%S)
BACKUP_FILE="backup_${TIMESTAMP}.tar.gz"

# Create backup directory if not exists
mkdir -p "$BACKUP_DIR"

echo "================================"
echo "         BACKUP SCRIPT          "
echo "================================"
echo ""
echo "Source      : $SOURCE_DIR"
echo "Destination : $BACKUP_DIR/$BACKUP_FILE"
echo "Started at  : $(date)"
echo ""

# Run backup
tar -czf "$BACKUP_DIR/$BACKUP_FILE" "$SOURCE_DIR" 2>/dev/null

# Check if backup succeeded
if [ $? -eq 0 ]; then
    SIZE=$(du -sh "$BACKUP_DIR/$BACKUP_FILE" | cut -f1)
    echo "✅ Backup successful!"
    echo "File size   : $SIZE"
    echo "Saved to    : $BACKUP_DIR/$BACKUP_FILE"
else
    echo "🚨 Backup FAILED!"
    exit 1
fi

echo ""
echo "--- All backups ---"
ls -lh "$BACKUP_DIR"
echo ""
echo "Completed at: $(date)"
echo "================================"