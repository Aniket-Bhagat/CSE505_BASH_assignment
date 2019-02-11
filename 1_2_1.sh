#!/bin/bash

a=`ls -l | egrep -c '^d'`
echo $a 'directorie(s) present in current folder.'