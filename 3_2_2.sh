#!/bin/bash

awk '(NR==1){print $0 > "male.txt"}
	{if ($2=="M") {print $0 >> "male.txt"}
	 else {print $0 > "female.txt"}
	}' marks.txt