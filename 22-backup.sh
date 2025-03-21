#!/bin/bash

SOURCE_DIRECTORY=/tmp/file.txt
DEST_DIRECTORY=/home/ec2-user/dest.txt
TIMESTAMP=$(date +%F-%H-%M-%S)

R="\e[31m"
G="\e[32m"

if [ -d $SOURCE_DIRECTORY ];
then
    echo "Error: Source directory $SOURCE_DIRECTORY does not exist."
    exit 1
else    
    echo "$Y please create $SOURCE_DIRECTORY exits $N"
fi

if [ -d $DEST_DIRECTORY]; 
then
    echo "Error: Source directory $DEST_DIRECTORY does not exist."
    exit 1
else    
    echo "$Y please create $DEST_DIRECTORY exits $N"
fi

#BACKUP_FILE="backup_$( "$SOURCE_DIRECTORY ")_$TIMESTAMP.tar.gz