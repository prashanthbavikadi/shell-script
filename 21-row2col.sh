#!/bin/bash

SOURCE_FILE=ec2-user/shell-script/col2row.txt


if [ -d  $SOURCE_FILE ]
then
     echo "$G source directory exits $N"
else
     echo "$Y please create $SOURCE_FILE exits $N"
fi       
