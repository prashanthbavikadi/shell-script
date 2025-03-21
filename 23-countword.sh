#!/bin/bash

SOURCE_DIRECTORY=/tmp/

R="\e[31m"
G="\e[32m"
Y="\e[33m"


if [ -d $SOURCE_DIRECTORY ]
then
    echo -e "$G Source directory exists $N"
else
    echo -e "$R Please make sure $SOURCE_DIRECTORY exists $N"
    exit 1
fi



FILES=$(find $SOURCE_DIRECTORY -name "*.txt")

while IFS= read -r line                                                        #WHAT IT IS READING $FILES THAT WHY DONE <<< $FILES
do
  echo "file_name=$line"
  echo "number_of_lines=$(wc --lines < $line)"                                      # to open the text file that that why we are writing here {--line < $line} remeber this ...
  echo "number_of_words occurance=$( cat $line | tr -c '[:alnum:]' '[\n*]' | tr '[:upper:]' '[:lower:]' | sort | uniq -c | sort -nr | head -n 5)"

done <<< $FILES


#tr -cs: '[:alnum:]' '[\n*]':
#Replaces anything that's not a letter or a number with a newline, effectively splitting the text into words.

#sort:
#Sorts the words alphabetically, which is required for uniq to count occurrences properly.

#@uniq -c:
#Counts the occurrences of each word.

#sort -nr:
#Sorts the output numerically in reverse order (most frequent words come first).

#head -n 5:
#Displays only the top 5 most frequent words
