#!/bin/bash

clearit(){
	list=`ls $1`
	for i in $list; do
		if [ -f $1/$i ]; then
			file=`grep -i $2 <<< $i`
			if [[ $file != '' ]]; then
				mkdir -p $1/$2
				mv $1/$file $1/$2/
			fi
		elif [ -d $1/$i ]; then
			d=$1$i/
			clearit $d $2 
		fi
	done
}

clearall(){
	list=`ls $1`
	for i in $list; do
		if [ -f $1/$i ]; then
			ext=`awk -F. '{print $NF}' <<< $i`
			mkdir -p $1/$ext
			mv $1/$i $1/$ext/
		elif [ -d $1/$i ]; then
			d=$1$i/
			clearall $d $2 
		fi
	done
}

case $2 in
	'All'|'all'|'ALL') clearall $1 ;;
	*) clearit $1 $2 ;;
esac

