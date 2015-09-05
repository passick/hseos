#!/bin/sh

DIRECTORY="$1"

while read PATTERN
do
  if [ -n PATTERN ] && [ "${PATTERN:0:1}" != "#" ]
  then
    files=("$DIRECTORY"/"$PATTERN")
    rm ${files[@]}
  fi
done
