#!/bin/bash

DISK_SPACE=( df -hT)
FREE_THRESHOLD=

while IFS= read -r line
do
    SPACE=$(echo $line | grep xfs | awk -F " " '{print $5}')
    
done <<< $DISK_SPACE 
