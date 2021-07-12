#!/bin/bash
# A shell script to read file line by line

set -euo pipefail

filename="aliases"

THING=$(gst)
echo $THING

COMM=$(comm -12 <(alias | sort) <(sort $filename) | wc -l | awk '{ print $1 }')
EXPECTED=$(wc -l $filename | awk '{ print $1; }')

echo $COMM
echo $EXPECTED

if [ $COMM == $EXPECTED ]
then
  exit 0
fi

exit 1
