#!/bin/bash

read pattern
egrep -q '^(([0-9a-f][0-9a-f])\-){5}([0-9a-f][0-9a-f])$' <<< $pattern

if [ $? -eq 0 ]; then
	echo 'Pattern Matched'
else
	echo "Pattern doesn't match" 
fi
