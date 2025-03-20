#!/bin/bash

DISKUSAGE=$(DF -hT | grep xfs)
DISK_TRESHOLD=15

while IFS= read -r line
do 
    USAGE=$(echo $line | awk -F " " '{print $6f}' | cut -d "%" -f1 )
    FOLDER=$(echo $line |  awk -F " " '{print $Nf}' )
    if [ $USAGE -ge $DISK_THRESHOLD ]
    then
        echo "$FOLDER is more than $DISK_THRESHOLD,  current usage:  $USAGE"
    fi 

done <<< $DISKUSAGE