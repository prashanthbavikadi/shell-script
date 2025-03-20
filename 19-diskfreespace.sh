#!/bin/bash


DISK_AVAILABLE=$(df -hT | grep xfs)
DISK_THRESHOLD=1.0


while IFS= read -r line
do
    AVAILABLE=$(echo $line | awk -F " " '{print $5F}')
    FOLDER=$(echo $line | awk -F " " '{print $NF}')
    if [ $AVAILABLE -ge $DISK_THRESHOLD ]
    then
        MESSAGE+="$FOLDER is more than $DISK_THRESHOLD, Current usage: $AVAILABLE \n"
    fi
done <<< $DISK_AVAILABLE
