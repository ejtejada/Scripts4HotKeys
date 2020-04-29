#!/bin/bash
#This script should delete any c++ libraries Steam installs so as to force Steam to use the local libraries. Then the Steam launches runs within firejail. A textfile storing the a desired gameID can be provided to launch the sandboxed steam game from a launcher.
FILE1=$1
if [ -z "$FILE1" ] #Check if no arguments passed
  then
    echo "No argument supplied, launching Steam Alone"
else #Assume file path was given as a textfile whose internals is formata expected as steam://rungameid/######
	echo "Read input file, desired game is:"
	FILE1=$(< "$FILE1")
	echo "$FILE1"
fi
rm ~/Media_Devices/SMOKI/Games/steam_jail/ubuntu12_32/steam-runtime/i386/usr/lib/i386-linux-gnu/libstdc++*
rm ~/Media_Devices/SMOKI/Games/steam_jail/ubuntu12_32/steam-runtime/i386/usr/share/doc/libstdc++*
rm ~/Media_Devices/SMOKI/Games/steam_jail/.local/share/Steam/ubuntu12_32/steam-runtime/usr/lib/x86_64-linux-gnu/libfontconfig*
rm ~/Media_Devices/SMOKI/Games/steam_jail/.local/share/Steam/ubuntu12_32/steam-runtime/usr/lib/i386-linux-gnu/libfontconfig*
rm ~/Media_Devices/SMOKI/Games/steam_jail/.local/share/Steam/ubuntu12_32/steam-runtime/i386/installed/libstdc++*
rm ~/Media_Devices/SMOKI/Games/steam_jail/.local/share/Steam/ubuntu12_32/steam-runtime/i386/usr/lib/gcc/i686-linux-gnu/4.6/libstdc++*
rm ~/Media_Devices/SMOKI/Games/steam_jail/.local/share/Steam/ubuntu12_32/steam-runtime/i386/usr/lib/gcc/i686-linux-gnu/4.6.3/libstdc++*
rm ~/Media_Devices/SMOKI/Games/steam_jail/.local/share/Steam/ubuntu12_32/steam-runtime/i386/usr/lib/gcc/i686-linux-gnu/5/libstdc++*
rm ~/Media_Devices/SMOKI/Games/steam_jail/.local/share/Steam/ubuntu12_32/steam-runtime/i386/usr/lib/gcc/i686-linux-gnu/5.4.1/libstdc++*
rm ~/Media_Devices/SMOKI/Games/steam_jail/.local/share/Steam/ubuntu12_32/steam-runtime/i386/usr/lib/i386-linux-gnu/libstdc++*
rm ~/Media_Devices/SMOKI/Games/steam_jail/.local/share/Steam/ubuntu12_32/steam-runtime/i386/usr/share/doc/libstdc++*
rm ~/Media_Devices/SMOKI/Games/steam_jail/.local/share/Steam/ubuntu12_32/steam-runtime.old/i386/usr/share/doc/libstdc++*
rm ~/Media_Devices/SMOKI/Games/steam_jail/.local/share/Steam/ubuntu12_32/steam-runtime/amd64/lib/x86_64-linux-gnu/libgcc_s.*
rm ~/Media_Devices/SMOKI/Games/steam_jail/.local/share/Steam/ubuntu12_32/steam-runtime/i386/lib/i386-linux-gnu/libgcc_s*
rm ~/Media_Devices/SMOKI/Games/steam_jail/.local/share/Steam/ubuntu12_32/steam-runtime/i386/usr/lib/i386-linux-gnu/libxcb.so*
rm ~/Media_Devices/SMOKI/Games/steam_jail/.local/share/Steam/ubuntu12_32/steam-runtime/amd64/installed/libstdc++6*
rm ~/Media_Devices/SMOKI/Games/steam_jail/.local/share/Steam/ubuntu12_32/steam-runtime/amd64/usr/lib/gcc/x86_64-linux-gnu/4.6/libstdc+*
rm ~/Media_Devices/SMOKI/Games/steam_jail/.local/share/Steam/ubuntu12_32/steam-runtime/amd64/usr/lib/gcc/x86_64-linux-gnu/4.6.3/libstdc+*
rm ~/Media_Devices/SMOKI/Games/steam_jail/.local/share/Steam/ubuntu12_32/steam-runtime/amd64/usr/lib/gcc/x86_64-linux-gnu/5/libstdc+*
rm ~/Media_Devices/SMOKI/Games/steam_jail/.local/share/Steam/ubuntu12_32/steam-runtime/amd64/usr/lib/gcc/x86_64-linux-gnu/5.4.1/libstdc+*
rm ~/Media_Devices/SMOKI/Games/steam_jail/.local/share/Steam/ubuntu12_32/steam-runtime/amd64/usr/lib/x86_64-linux-gnu/libstdc++.so.*
rm ~/Media_Devices/SMOKI/Games/steam_jail/.local/share/Steam/ubuntu12_32/steam-runtime/amd64/usr/share/doc/libstdc++6*
rm ~/Media_Devices/SMOKI/Games/steam_jail/.local/share/Steam/ubuntu12_32/steam-runtime/i386/installed/libstdc++6*
rm ~/Media_Devices/SMOKI/Games/steam_jail/.local/share/Steam/ubuntu12_32/steam-runtime/i386/usr/lib/gcc/i686-linux-gnu/4.6/libstdc++*
rm ~/Media_Devices/SMOKI/Games/steam_jail/.local/share/Steam/ubuntu12_32/steam-runtime/i386/usr/lib/gcc/i686-linux-gnu/4.6.3/libstdc++*
rm ~/Media_Devices/SMOKI/Games/steam_jail/.local/share/Steam/ubuntu12_32/steam-runtime/i386/usr/lib/gcc/i686-linux-gnu/5/libstdc++*
rm ~/Media_Devices/SMOKI/Games/steam_jail/.local/share/Steam/ubuntu12_32/steam-runtime/i386/usr/lib/gcc/i686-linux-gnu/5.4.1/libstdc++*
rm ~/Media_Devices/SMOKI/Games/steam_jail/.local/share/Steam/ubuntu12_32/steam-runtime/i386/usr/lib/i386-linux-gnu/libstdc++.so.*
rm ~/Media_Devices/SMOKI/Games/steam_jail/.local/share/Steam/ubuntu12_32/steam-runtime/i386/usr/share/doc/libstdc++*
rm ~/Media_Devices/SMOKI/Games/steam_jail/.local/share/Steam/ubuntu12_32/steam-runtime.old/i386/usr/share/doc/libstdc++*
cd
GDK_SCALE=2 firejail --private=/home/steam/steam_jail ./steam $FILE1
