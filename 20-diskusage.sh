#!/bin/bash

DISK_USAGE=$(df -HT | grep xfs)

while read -r line
    do 
        echo $line
    done <<< $DISK_USAGE