#!/bin/bash

CPU_5PROCESS=$(top  -o %CPU)
MESSAGE=""

while IFS= read -r line
do 
   PROCESS=$(echo  $LINE | head -n 12 | awk -F " " '{print$1 " "  $10 " " $11}')
   COMMAND=$(echo  $LINE | awk -F " " '{print $NF}' )
   
done <<< CPU_5PROCESS

MESSAGE+="$COMMAND is more than $CPU_5PROCESS \n"