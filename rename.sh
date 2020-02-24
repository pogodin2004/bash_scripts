#!/bin/bash

if [ $# -lt 2 ]; then
	echo "Usage: "
	echo "$0 newprefix files"
	exit 1
fi 

prefix=$1
shift
count=0

for file in $*
do
	count=$[count+1]
	mv -n "${file}" "${prefix}${count}.jpg"
done

exit 0

