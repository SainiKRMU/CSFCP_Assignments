#!/bin/bash

# ------------------------------------------------------------
# Script Name : backup.sh
# Author      : Your Name
# Date        : 2025-11-15
# Purpose     : Creates a timestamped backup of a directory.
# ------------------------------------------------------------

SOURCE_DIR="$1"
BACKUP_ROOT="$HOME/backups"
TIMESTAMP=$(date +%Y-%m-%d_%H-%M-%S)
BACKUP_DIR="$BACKUP_ROOT/backup_$TIMESTAMP"

mkdir -p "$BACKUP_DIR"
cp -r "$SOURCE_DIR" "$BACKUP_DIR"

echo "Backup saved to $BACKUP_DIR"