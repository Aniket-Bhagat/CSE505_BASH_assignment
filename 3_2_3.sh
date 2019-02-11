#!/bin/bash

awk 'BEGIN{print "Name	TotalMarks"}(NR>1){s=$3+$4+$5; print $1 "\t" s}' marks.txt