#!/bin/bash
#This script should receive a path to a textfile, read that textfile which house the path to the .nsp||.xci file. Otherwise, launch normally.
FILE1=$1
if [ -z "$FILE1" ] #Check if no arguments passed
  then
    echo "No argument supplied, launching yuzu alone"
else #Assume file path was given as path with no ignored spaces /path/to/game/USRDIR/<gameID>.nsp
	echo "Read path, desired game is:"
	#FILE1=$(< "$FILE1")
	echo "$FILE1"
fi

cd
#force_integer_tex_nearest=true mesa_glthread=true ~/Media_Devices/SMOKI/Games/yuzu/yuzu-20210116-7a084da5b.AppImage $FILE1
#force_integer_tex_nearest=true mesa_glthread=true mangohud ~/Media_Devices/SMOKI/Games/yuzu/yuzu-20211126-e56915b00.AppImage $FILE1
#force_integer_tex_nearest=true mesa_glthread=true mangohud ~/Media_Devices/SMOKI/Games/yuzu/yuzu-20220528-67228f2fe.AppImage $FILE1
force_integer_tex_nearest=true mesa_glthread=true mangohud ~/Media_Devices/SMOKI/Games/yuzu/Yuzu-EA-2995.AppImage $FILE1
