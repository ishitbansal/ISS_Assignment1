#!/bin/bash

touch speech.txt
while IFS="" read -r p || [ -n "$p" ]
do
        line="$p"
        words=`wc -w <<< $line`	
        if [[ $words -gt 1 ]]
        then
        echo ${line#*~} once said, "\"${line%%.*}"\". >> speech.txt
        fi
done < $1