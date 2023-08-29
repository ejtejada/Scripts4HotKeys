#!/bin/bash
# Basic if statement
FILE1=$1
if [ -z "$FILE1" ] #Check if no arguments passed
  then
    echo "No argument supplied, launching Steam Alone"
else #Assume file path was given as a textfile whose internals is format to some other path.
	echo "Read input file, desired game is:"
	FILE1=$(< "$FILE1")
	echo "$FILE1"
fi

date
