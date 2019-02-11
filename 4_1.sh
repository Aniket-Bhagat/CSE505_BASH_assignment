#!/bin/bash

check(){
	if [[ -f $1 ]]; then
		c=`file $1 | cut -d ':' -f 2 | egrep -io 'compresse?|archive'`
		if [[ -n $c ]]; then
			# echo ${c}d
			return 0
		else 
			echo Not compressed or archive file
			return 2
		fi
	else
		echo File does not exists
		return 1
	fi
}

check $1
value=$?
# echo $value

extract(){
	if [[ `echo $1` = *".tar"* ]]; then
		ext=$(echo $1 | egrep -o '\.tar[\.2abglmoxzZ]*')
		case $ext in
			'.tar'|'.tar.bz2'|'.tar.gz'|'.tar.xz') tar -xvf $1 ;;
			'.tar.lzma') tar -xvJf $1 ;;
			'.tar.Z') tar -xvzf $1;;
			'.tar.lzo') lzop -dc $1 | tar -xvf - ;;
		esac
	else
		ext=$(echo $1 | egrep -o '\.[2abcegijlmoprwxz]+')
		case $ext in
			'.ar') ar -xvf  $1 ;;
			'.bz2') bzip2 -dk $1 ;;
			'.cbz') unzip -j $1 ;;
			'.cpio') cpio -i < $1 ;;
			'.jar'|'.war'|'.ear') jar -xvf $1 ;;
			'.gz') gunzip -k $1 ;;
			'.lzma') lzma -dk $1 ;;
			'.zip') unzip $1 ;;
			'.xz') unxz  -kvf $1 ;;
			'.lzo') lzop -dkv $1 ;;
		esac
	fi
}

if [[ $value -eq 0 ]]; then
	extract $1
fi
