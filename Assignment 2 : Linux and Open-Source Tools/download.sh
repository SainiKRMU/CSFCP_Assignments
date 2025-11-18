#!/bin/bash

# ------------------------------------------------------------
# Script Name : download.sh
# Author      : Your Name
# Date        : 2025-11-15
# Purpose     : Downloads a file from the internet to a predefined folder
# ------------------------------------------------------------

URL="$1"
DOWNLOAD_DIR="$HOME/downloads"
mkdir -p "$DOWNLOAD_DIR"
FILENAME=$(basename "$URL")
TIMESTAMP=$(date +%Y-%m-%d_%H-%M-%S)
DEST="$DOWNLOAD_DIR/${TIMESTAMP}_$FILENAME"
wget -O "$DEST" "$URL"
echo "Downloaded $URL to $DEST"