#!/bin/bash
#Lol, this might be the only working one line cpu+mem watcher that works on most POSIX systems. It did have to be corrected by number of cores, as before it did the math assuming a single core.
#CORE_COUNT=$(nproc)
#echo $CORE_COUNT

#Based on: https://apple.stackexchange.com/a/311751
ps -A -o %cpu,%mem | awk -v cores=$(nproc) '{ cpu += $1; mem += $2;} END {print "CPU: "cpu/cores"% MEM: "mem"%"}'
