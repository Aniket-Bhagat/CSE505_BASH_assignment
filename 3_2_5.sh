#!/bin/bash

awk 'BEGIN{a=0;n=0;t=0;
	print "-----------------------------------------\n",
	"*** Grade Report for the ABC course ***",
	"\n-----------------------------------------\n",
	"      Student  Marks  Grade"}

	(NR>1){s=$3+$4+$5; if(a<s){a=s;n=$1}; m[$1]=s;t+=s;b+=1}
	
	END{avg=t/b; l=a; for (i in m) if(m[i]<l){l=m[i]};
		for (i in m)
			if 		(m[i]>=95){print "\t"i,"\t"m[i]"\tA"}
			else if (m[i]>=90){print "\t"i,"\t"m[i]"\tA-"}
			else if (m[i]>=85){print "\t"i,"\t"m[i]"\tB"}
			else if (m[i]>=80){print "\t"i,"\t"m[i]"\tB-"}
			else if (m[i]>=75){print "\t"i,"\t"m[i]"\tC"}
			else if (m[i]>=70){print "\t"i,"\t"m[i]"\tC-"}
			else if (m[i]>=60){print "\t"i,"\t"m[i]"\tD"}
			else 			  {print "\t"i,"\t"m[i]"\tF"}
		print "-----------------------------------------\n",
		"High:"a,"\tAvg:"avg,"\tLow:"l,
		"\n-----------------------------------------",
		"\n       *** End of Grade Report ***​"

		}' marks.txt