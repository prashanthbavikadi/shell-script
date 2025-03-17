#!/bin/bash 

USERID=$(id - u)

if [ $USERID -ne 0]
then
    echo " please run this command with root access."
    exit 2   # manually exit if error comes.
else 
    echo " you are in root access."
fi

dnf install mysql -y

if [ $? - ne 0]
then 
    echo " installation is ....FAILURE."
    exit 1
else
    echo " installation is ....SUCCESS."
fi

dnf install mysql -y

if [ $? - ne 0]
then 
    echo " installation is ....FAILURE."
    exit 1
else
    echo " installation is ....SUCCESS."
fi

