#!/bin/bash
#This script should receive a path to a textfile, read that textfile which houses the path to the <gameID>.chd file. Otherwise, launch normally.
FILE1=$1
if [ -z "$FILE1" ] #Check if no arguments passed
  then
    echo "No argument supplied, launching pcsx2 alone"
else #Assume file path was given as a textfile whose internals is formata expected as /path/to/game/<gameID>.chd
	echo "Read input file, desired game is:"
	FILE1=$(< "$FILE1")
	echo "$FILE1"
fi

cd

PCSX2 --nogui --fullscreen $FILE1
