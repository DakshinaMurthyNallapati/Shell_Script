#!/bin/bash

DISK_USAGE=$(df -HT | grep xfs)
DISK_THRESHOLD=5 #In real projects threshold value will be 70

while read -r line
    do 
        USAGE=$(echo $line | awk -F " " '{print $6F}')
        PARTITION=$(echo $line | awk -F " " '{print $nF}')

    done <<< $DISK_USAGE