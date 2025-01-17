#!/bin/bash

SOURCE_DIR="/home/ec2-user/app-logs"

FILES_TO_DELETE=$(find $SOURCE_DIR -name "*.log" -mtime +14)
echo "Files to be deleted: $FILES_TO_DELETE"

while read -r file
    do
        echo "Deleting file :$file"
        rm -rf $file
        echo "Files deleted successfully"

    done <<< $FILES_TO_DELETE
