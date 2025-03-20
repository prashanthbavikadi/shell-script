#!/bin/bash

SOURCE_DIRECTORY=/tmp/app-logs

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m" 


if [ -d $SOURCE_DIRECTORY ]
then
     echo "$G source directory exits $N"
else
     echo "$Y please create $SOURCE_DIRECTORY exits $N"
fi       


FILES=$(find $SOURCE_DIRECTORY -name "*.log" -mtime +7) 

echo "files to delete: $FILES"