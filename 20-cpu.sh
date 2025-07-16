#!/bin/bash


CPU_PROCESS=$(ps -eo pid,ppid,%mem,%cpu,cmd --sort=-%mem | head -n 8 | awk -F " " '{print $3F}'  | cut -d "%" -f1 )

echo "this  shows 5 CPU processing : $CPU_PROCESS "


while IFS= read -r line
do 
   PROCESS=$(echo  $LINE | head -n 12 | awk -F " " '{print $10}')
   COMMAND=$(echo  $LINE | awk -F " " '{print $NF}' )
   
done <<< CPU_5PROCESS

MESSAGE+="$COMMAND is more than $CPU_PROCESS \n"