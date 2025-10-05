#!/bin/sh
#Author: anandnitrate

if [ $# != 2 ]
then
	echo "Invalid number of Arguments"
	exit 1
fi

#echo "Entered file dir is: $1"
#echo "Entered search string is: $2"


if [ ! -d "$1" ]
then
	echo "Directory not found!"
	exit 1
fi

X=$(find $1 -type f | wc -l)
Y=$(grep -r $2 $1 | wc -l)
echo "The number of files are ${X} and the number of matching lines are ${Y}"

