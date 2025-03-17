#!/bin/bash

COURSES=("AWS DEVOPS" "CLOUD DEVOPS1" "DATASCIENCE")

echo "my first course is: ${COURSES[0]}"
echo "my second course is: ${COURSES[@]}"
 
 # here @indicates that inculdes all courses availble 