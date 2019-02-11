#!/bin/bash

read pattern
egrep -q '^([0-9][0-9]\.)((2[0-5][0-5]|[0-1][0-9][0-9])\.){2}(2[0-5][0-5]|[0-1][0-9][0-9])$' <<< $pattern

if [ $? -eq 0 ]; then
	echo 'Pattern Matched'
else
	echo "Pattern doesn't match" 
fi
