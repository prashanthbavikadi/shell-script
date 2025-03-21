#!/bin/bash

SOURCE_DIRECTORY=/tmp/file.txt
DEST_DIRECTORY=/tmp/dest.txt
TIMESTAMP=$(date +%F-%H-%M-%S)

R="\e[31m"
G="\e[32m"

if [ -d "$SOURCE_DIRECTORY" ]; 
then
    echo "Error: Source directory '$SOURCE_DIR' does not exist."
    exit 1
else    
    echo "$Y please create $SOURCE_DIRECTORY exits $N"
fi

if [ -d "$DEST_DIRECTORY" ]; 
then
    echo "Error: Source directory '$DEST_DIR' does not exist."
    exit 1
else    
    echo "$Y please create $DEST_DIRECTORY exits $N"
fi