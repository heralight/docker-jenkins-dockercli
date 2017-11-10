#!/bin/bash
while read line; do
            line=$( echo $line | sed 's/"/\\"/g' )
            eval echo "\"$line\""
done
