#!/bin/sh
# Author: anandnitrate

if [ $# != 2 ] 
then 
	echo "Invalid number of arguments"
	echo "Correct usage is: "
	echo "./writer.sh arg1 arg2"
	echo "whereas arg1 - full path to a file"
	echo "        arg2 - text string which will be written to this file"
	exit 1
fi

mkdir -p $(dirname $1)

echo "$2" > $1

if [ $? != 0 ]
then
	echo "File could not be created!"
fi

