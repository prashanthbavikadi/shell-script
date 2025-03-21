#!/bin/bash

CPU_PROCESS=$(top  -o %CPU )
MESSAGE=""

while IFS= read -r line
do 
   PROCESS=$(echo  $LINE | head -n 12 | awk -F " " '{print $3 " " $1}')
   COMMAND=$(echo  $LINE | awk -F " " '{print $NF}' )
   
done <<< CPU_5PROCESS

MESSAGE+="$COMMAND is more than $CPU_PROCESS \n"