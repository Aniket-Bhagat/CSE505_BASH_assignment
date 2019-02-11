#!/bin/bash

awk 'NR<=1 {print $1,$2,$5} END{print $1,$2,$5}' marks.txt