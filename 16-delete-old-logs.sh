#!/bin/bash

SOURCE_DIR="/home/ec2-user/app-logs"

#LOGS_FOLDER="/home/ec2-user/app-logs"
#LOG_FILE=$(echo $0 | cut -d "." -f1)
#TIMESTAMP=$(date +%Y-%m-%d-%H-%M-%S)
#LOG_FILE_NAME="$LOGS_FOLDER/$LOG_FILE-$TIMESTAMP.log"

FILES_TO_DELETE=$(find $SOURCE_DIR -name "*.log" -mtime +14)
echo "Files to be deleted: $FIlES_TO_DELETE"

