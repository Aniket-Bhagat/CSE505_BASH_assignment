#!/bin/bash

a=`ls -l | sed -En '/^d/p' | wc -l`
echo $a 'directorie(s) present in current folder.'