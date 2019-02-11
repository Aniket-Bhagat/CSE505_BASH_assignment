#!/bin/bash

read pattern
egrep -q '^([0-9]{3}\.){3}([0-9]{3})$' <<< $pattern

if [ $? -eq 0 ]; then
	echo 'Pattern Matched'
else
	echo "Pattern doesn't match" 
fi
