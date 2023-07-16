#!/bin/bash

if [ $# -ne 2 ]
then
	echo "please Enter two arguments"
	exit 1
fi

dir=$(dirname $1)

if [ ! -d $1 ]
then
	mkdir -p $dir
	echo $2 > $1
else
	echo $2 > $1
fi
