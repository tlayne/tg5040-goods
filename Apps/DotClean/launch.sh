#!/bin/sh

LOG_FILE=/mnt/SDCARD/Apps/DotClean/log.txt
exec > "$LOG_FILE" 2>&1

SDCARD_PATH=/mnt/SDCARD
cd "$SDCARD_PATH/Roms"
echo "Start Clean"
find . -type f -name '._*' -exec rm {} \;
echo "End Clean"
sync