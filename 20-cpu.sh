#!/bin/bash

CPU_5PROCESS=(top  -o %CPU)

while IFS= read -r line
do 
   PROCESS=$(echo top -o %CPU -n 1 | head -n 12)
   
done <<< CPU_5PROCESS