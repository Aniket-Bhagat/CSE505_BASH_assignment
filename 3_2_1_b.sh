#!/bin/bash

awk '(NR<5){print $1,$2,$5}' marks.txt