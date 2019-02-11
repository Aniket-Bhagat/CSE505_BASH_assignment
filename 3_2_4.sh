#!/bin/bash

awk 'BEGIN{a=0;b=0;t=0}
	(NR>1){s=$3+$4+$5; if(a<s){a=s;n=$1}; m[$1]=s;t+=s;b+=1}
	END{printf("Topper is %s with %d marks\n",n,a);
		avg=t/b;print "Students scored above class average :"
		for (i in m)
			if (m[i]>avg){print i,m[i]}
		}' marks.txt