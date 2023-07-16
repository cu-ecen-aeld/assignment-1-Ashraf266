#!/bin/bash



filesdir=$1
searchstr=$2

if [ $# != 2 ]
then
	echo "Please specify two arguments"
	exit 1
fi

if [ ! -d $filesdir ]
then
	echo "There's no such a path"
	exit 1
fi


x=$(find $filesdir -type f | wc -l)
y=$(grep -r $searchstr $filesdir | wc -l)

echo "The number of files are $x and the number of matching lines are $y" 
