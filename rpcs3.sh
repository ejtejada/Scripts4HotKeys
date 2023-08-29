#!/bin/bash
#This script should receive a path to a textfile, read that textfile which house the path to the EBOOT.BIN file. Otherwise, launch normally.
FILE1=$1
if [ -z "$FILE1" ] #Check if no arguments passed
  then
    echo "No argument supplied, launching rpcs3 alone"
else #Assume file path was given as a textfile whose internals is formata expected as /path/to/game/USRDIR/EBOOT.BIN
	echo "Read input file, desired game is:"
	FILE1=$(< "$FILE1")
	echo "$FILE1"
fi

cd
#~/Media_Devices/SMOKI/Games/rpcs3/rpcs3-v0.0.9-10244-dbce10d0_linux64.AppImage $FILE1
~/Media_Devices/SMOKI/Games/rpcs3/rpcs3-v0.0.22-13575-2b325de6_linux64.AppImage $FILE1
