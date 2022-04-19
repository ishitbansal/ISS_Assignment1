#!/bin/bash

#5a
read -p "Enter string for 5a and 5b: " string
echo
echo 5a:
echo $string | rev

#5b
echo
len=${#string}
echo 5b:
for (( i=$len-1; i>=0; i-- ));
do
	k=${string:$i:1}
	k=$(echo "$k" | tr "a-zA-Z" "b-zA-ZA")
	incr="$incr$k"
done
echo "$incr"

#5c
echo
read -p "Enter string with even no. of letters for 5c: " string1
echo
echo 5c:
len=${#string1}
let half_len=$len/2
for (( i=$half_len-1; i>=0; i-- ))
do
	half_rev=$half_rev${string1:$i:1}
done
for (( i=$half_len; i<$len; i++ ))
do
	half_rev=$half_rev${string1:$i:1}
done
echo $half_rev