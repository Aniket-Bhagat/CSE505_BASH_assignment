#!/bin/bash

awk -F '\\. | \\(|\\)	|\\ 	' 'BEGIN{ print "[" } {print "\t{\n" "\t\t" "\"ID:" $1 "\"\n" "\t\t" "\"NAME:"$2 "\"\n""\t\t" "\"YEAR:" $3 "\"\n" "\t\t" "\"RATING:"$4 "\"\n\t}" } END{print "]"}' imdb-top-250.txt > json.txt
