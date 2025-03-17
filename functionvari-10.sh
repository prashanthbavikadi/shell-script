#!/bin/bash

USERID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log

VALIDATE (){
if [ $1 -ne 0 ]
then 
    echo " $2 is ....FAILURE."
    exit 1
else
    echo " $2 is ....SUCCESS."
fi

}

if [ $USERID -ne 0 ]
then
    echo " please run this command with root access."
    exit 2   # manually exit if error comes.
else 
    echo " you are in root access."
fi


dnf  install mysql -y &>>$LOGFILE
VALIDATE $?  "Installing is -mysqll"

dnf install git -y &>>$LOGFILE
VALIDATE $?  "Installing is git"