#!/bin/bash

JOB="DEVOPS FROM Current Company"

echo "Before calling  other Company , job: $JOB"
echo "process id of current script: $$"

./15-other-script.sh

echo "After calling  other Company , job: $JOB"
