#!/bin/bash

echo " enter you AGE"
read AGE
 
if [ $AGE -ge 18 ]
then
    echo " you are elgible for vote"
else 
    echo "you are not eligible to vote" 
fi

