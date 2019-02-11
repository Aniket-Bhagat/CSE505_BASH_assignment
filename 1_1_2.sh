#!/bin/bash

a=`egrep -ci '^[aeiou].*' /usr/share/dict/words`
echo $a 'Words starting with vowel in input file'