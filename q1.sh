#!/bin/bash

#1a
echo 1a:
grep -v '^$' $1
echo

#1b
echo
echo 1b:
awk '!seen[$0]++' $1
echo
