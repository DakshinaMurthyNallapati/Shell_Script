#!/bin/bash

DISK_USAGE=$(df -HT | grep xfs)
DISK_THRESHOLD=5 #In real projects threshold value will be 70
MSG=""

while read -r line
    do 
        USAGE=$(echo $line | awk -F " " '{print $6F}'| cut -d "%" -f1)
        PARTITION=$(echo $line | awk -F " " '{print $NF}')
        #echo "Partition: $PARTITION    Usage: $USAGE"

        if [ $USAGE -ge $DISK_THRESHOLD ]
            then
                MSG+="High disk usage partition is: $PARTITION Usage percentage is: $USAGE\n"
        fi

    done <<< $DISK_USAGE
    echo -e "Message : $MSG"

    echo "$MSG" | mutt -s "High Disk Usage" dakshinamurthynallapati@gmail.com