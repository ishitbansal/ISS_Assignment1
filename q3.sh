#!/bin/bash

#3a
echo "3a. Size of file in bytes:"
stat --printf="%s" $1
echo
echo

#3b
echo "3b. Number of lines in file:"
wc -l < $1
echo

#3c
echo "3c. Number of words in file:"
wc -w < $1
echo

#3d
echo "3d. Words in each line:"
n=0
while IFS="" read -r p || [ -n "$p" ]
do
	let n=$n+1
        line="$p"
        words=`wc -w <<< $line`
        echo Line No:$n - Count of Words:$words
done < $1
echo

#3e
echo "3e. List of repeated words and their frequencies:" 
tr  [:space:] '\n' <$1| sort -n |uniq -cd|sort -k1rn -k2n|awk '{print "Word:"$2,"Count of Repetition:"$1}'|sed 's/^ \+//; s/ / - /'
echo