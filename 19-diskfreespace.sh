#!/bin/bash

DISK_SPACE=( df -hT)


while IFS= read -r line
do
    DISK_SPACE=$(echo $line | grep xfs | awk -F " " '{print $5}')
    
done <<< $DISK_SPACE 
