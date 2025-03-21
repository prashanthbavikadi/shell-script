#!/bin/bash

SOURCE_DIRECTORY=/home/ec2-user/source/file
DEST_DIRECTORY=/home/ec2-user/dest
TIMESTAMP=$(date +%F-%H-%M-%S)

R="\e[31m"
G="\e[32m"

if [ -d $SOURCE_DIRECTORY ]
then
    echo "Source directory $SOURCE_DIRECTORY  exits."
    
else    
    echo "$Y please create $SOURCE_DIRECTORY does not  exits $N"
    
fi

if [ -d $DEST_DIRECTORY ]
then
    echo " destination directory $DEST_DIRECTORY  exist."
    exit 1
else    
    echo "$Y please create $DEST_DIRECTORY does not exits $N"
fi

Bbackupfile="backup_$( "$SOURCE_DIRECTORY ")_$TIMESTAMP.tar.gz