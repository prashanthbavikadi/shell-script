#!/bin/bash


CPU_PROCESS=$(top  -o %CPU | head -n 12 | awk -F " " '{print $11F}' )

echo "this  shows 5 CPU processing : $CPU_PROCESS "


#while IFS= read -r line
#do 
   #PROCESS=$(echo  $LINE | head -n 12 | awk -F " " '{print $10}')
   #COMMAND=$(echo  $LINE | awk -F " " '{print $NF}' )
   
#done <<< CPU_5PROCESS

#MESSAGE+="$COMMAND is more than $CPU_PROCESS \n"