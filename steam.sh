#!/bin/bash
FILE1=$1
if [ -z "$FILE1" ] #Check if no arguments passed
  then
    echo "No argument supplied, launching Steam Alone"
else #Assume file path was given as a textfile whose internals is formata expected as steam://rungameid/######
	echo "Read input file, desired game is:"
	FILE1=$(< "$FILE1")
	echo "$FILE1"
fi
rm -rf ~/Media_Devices/SMOKI/Games/steam_jail/ubuntu12_32/steam-runtime/i386/usr/lib/i386-linux-gnu/libstdc++*
rm -rf ~/Media_Devices/SMOKI/Games/steam_jail/ubuntu12_32/steam-runtime/i386/usr/share/doc/libstdc++*
rm -rf ~/Media_Devices/SMOKI/Games/steam_jail/.local/share/Steam/ubuntu12_32/steam-runtime/usr/lib/x86_64-linux-gnu/libfontconfig*
rm -rf ~/Media_Devices/SMOKI/Games/steam_jail/.local/share/Steam/ubuntu12_32/steam-runtime/usr/lib/i386-linux-gnu/libfontconfig*
rm -rf ~/Media_Devices/SMOKI/Games/steam_jail/.local/share/Steam/ubuntu12_32/steam-runtime/i386/installed/libstdc++*
rm -rf ~/Media_Devices/SMOKI/Games/steam_jail/.local/share/Steam/ubuntu12_32/steam-runtime/i386/usr/lib/gcc/i686-linux-gnu/4.6/libstdc++*
rm -rf ~/Media_Devices/SMOKI/Games/steam_jail/.local/share/Steam/ubuntu12_32/steam-runtime/i386/usr/lib/gcc/i686-linux-gnu/4.6.3/libstdc++*
rm -rf ~/Media_Devices/SMOKI/Games/steam_jail/.local/share/Steam/ubuntu12_32/steam-runtime/i386/usr/lib/gcc/i686-linux-gnu/5/libstdc++*
rm -rf ~/Media_Devices/SMOKI/Games/steam_jail/.local/share/Steam/ubuntu12_32/steam-runtime/i386/usr/lib/gcc/i686-linux-gnu/5.4.1/libstdc++*
rm -rf ~/Media_Devices/SMOKI/Games/steam_jail/.local/share/Steam/ubuntu12_32/steam-runtime/i386/usr/lib/i386-linux-gnu/libstdc++*
rm -rf ~/Media_Devices/SMOKI/Games/steam_jail/.local/share/Steam/ubuntu12_32/steam-runtime/i386/usr/share/doc/libstdc++*
rm -rf ~/Media_Devices/SMOKI/Games/steam_jail/.local/share/Steam/ubuntu12_32/steam-runtime.old/i386/usr/share/doc/libstdc++*
rm -rf ~/Media_Devices/SMOKI/Games/steam_jail/.local/share/Steam/ubuntu12_32/steam-runtime/amd64/lib/x86_64-linux-gnu/libgcc_s.*
rm -rf ~/Media_Devices/SMOKI/Games/steam_jail/.local/share/Steam/ubuntu12_32/steam-runtime/i386/lib/i386-linux-gnu/libgcc_s*
rm -rf ~/Media_Devices/SMOKI/Games/steam_jail/.local/share/Steam/ubuntu12_32/steam-runtime/i386/usr/lib/i386-linux-gnu/libxcb.so*
rm -rf ~/Media_Devices/SMOKI/Games/steam_jail/.local/share/Steam/ubuntu12_32/steam-runtime/amd64/installed/libstdc++6*
rm -rf ~/Media_Devices/SMOKI/Games/steam_jail/.local/share/Steam/ubuntu12_32/steam-runtime/amd64/usr/lib/gcc/x86_64-linux-gnu/4.6/libstdc+*
rm -rf ~/Media_Devices/SMOKI/Games/steam_jail/.local/share/Steam/ubuntu12_32/steam-runtime/amd64/usr/lib/gcc/x86_64-linux-gnu/4.6.3/libstdc+*
rm -rf ~/Media_Devices/SMOKI/Games/steam_jail/.local/share/Steam/ubuntu12_32/steam-runtime/amd64/usr/lib/gcc/x86_64-linux-gnu/5/libstdc+*
rm -rf ~/Media_Devices/SMOKI/Games/steam_jail/.local/share/Steam/ubuntu12_32/steam-runtime/amd64/usr/lib/gcc/x86_64-linux-gnu/5.4.1/libstdc+*
rm -rf ~/Media_Devices/SMOKI/Games/steam_jail/.local/share/Steam/ubuntu12_32/steam-runtime/amd64/usr/lib/x86_64-linux-gnu/libstdc++.so.*
rm -rf ~/Media_Devices/SMOKI/Games/steam_jail/.local/share/Steam/ubuntu12_32/steam-runtime/amd64/usr/share/doc/libstdc++6*
rm -rf ~/Media_Devices/SMOKI/Games/steam_jail/.local/share/Steam/ubuntu12_32/steam-runtime/i386/installed/libstdc++6*
rm -rf ~/Media_Devices/SMOKI/Games/steam_jail/.local/share/Steam/ubuntu12_32/steam-runtime/i386/usr/lib/gcc/i686-linux-gnu/4.6/libstdc++*
rm -rf ~/Media_Devices/SMOKI/Games/steam_jail/.local/share/Steam/ubuntu12_32/steam-runtime/i386/usr/lib/gcc/i686-linux-gnu/4.6.3/libstdc++*
rm -rf ~/Media_Devices/SMOKI/Games/steam_jail/.local/share/Steam/ubuntu12_32/steam-runtime/i386/usr/lib/gcc/i686-linux-gnu/5/libstdc++*
rm -rf ~/Media_Devices/SMOKI/Games/steam_jail/.local/share/Steam/ubuntu12_32/steam-runtime/i386/usr/lib/gcc/i686-linux-gnu/5.4.1/libstdc++*
rm -rf ~/Media_Devices/SMOKI/Games/steam_jail/.local/share/Steam/ubuntu12_32/steam-runtime/i386/usr/lib/i386-linux-gnu/libstdc++.so.*
rm -rf ~/Media_Devices/SMOKI/Games/steam_jail/.local/share/Steam/ubuntu12_32/steam-runtime/i386/usr/share/doc/libstdc++*
rm -rf ~/Media_Devices/SMOKI/Games/steam_jail/.local/share/Steam/ubuntu12_32/steam-runtime.old/i386/usr/share/doc/libstdc++*
cd
GDK_SCALE=2 DBUS_FATAL_WARNINGS=0 STEAM_RUNTIME=1 STEAM_RUNTIME_PREFER_HOST_LIBRARIES=1 firejail --ignore=seccomp --profile=/etc/firejail/steam.profile.broken  --private=/home/steam/steam_jail ./steam  $FILE1
#GDK_SCALE=2 firejail --net=none --private=/home/steam/steam_jail ./steam $FILE1
#GDK_SCALE=2 DBUS_FATAL_WARNINGS=0 STEAM_RUNTIME=1 STEAM_RUNTIME_PREFER_HOST_LIBRARIES=1 firejail --net=none --ignore=seccomp --profile=/etc/firejail/steam.profile.broken  --private=/home/steam/steam_jail ./steam  $FILE1
