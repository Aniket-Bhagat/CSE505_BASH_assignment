#!/bin/bash

DictCheck(){
	for((i=4;i<=${#1};i++))
	do
		for((j=0;j<=${#1}-$i;j++))
		do
			if [ `egrep -ic "^${1:$j:$i}" /usr/share/dict/words` -gt 0 ]; then
				return 1
			else
				return 0
			fi
		done
	done
}

echo -e 'Enter your password : \c'
read  -s P


# DictCheck $P
# echo $?

if [[ ${#P} -lt 8 ]]; then
	echo -e "\nWeak Password - Should be greater than or equal 8 charecters"
else 
	grep -q [0-9] <<< $P
	if test $? -ne 0 ; then
		echo -e '\nWeak Password - Must contain at least one numeric character'
	else
		grep -q '[@#$%&*+-=]' <<< $P
		if test $? -ne 0 ; then
			echo -e '\nWeak Password - Must contain at least one of special character @#$%&*+-='
		else
			DictCheck $P
			if [[ $? -eq 1 ]]; then
				echo -e "\nWeak Password - Easy to guess"
			else
				echo -e "\nStrong Password"
			fi
		fi
	fi

fi

