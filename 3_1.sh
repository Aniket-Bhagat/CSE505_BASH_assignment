#!/bin/bash

if [[ -f $1 ]]; then
	echo `awk '!seen[$0]++' $1`
else
	echo "input valid file name as cmd line argument (e.g. test.txt)"
fi
