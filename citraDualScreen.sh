#!/bin/bash
#This script should receive a path to a textfile, read that textfile which house the path to the .3ds or .cxi file. Otherwise, launch normally.
FILE1=$1
if [ -z "$FILE1" ] #Check if no arguments passed
  then
    echo "No argument supplied, launching Citra alone"
else #Assume file path was given as a textfile whose internals is formata expected as /path/to/game/someGame.3ds
	echo "Read input file, desired game is:"
	FILE1=$(< "$FILE1")
	echo "$FILE1"
fi

~/.citra/canary/citra-qt $FILE1
