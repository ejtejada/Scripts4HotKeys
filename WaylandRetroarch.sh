#!/bin/bash
weston --width=1920 --height=1080 --fullscreen & p1=$!
retroarch & p2=$!

wait -n
[ "$?" -gt 1 ] || kill "$p1" "$p2"
wait
