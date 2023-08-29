#!/bin/bash
#This script will stress the CPU on 12 threads and push a OpenGL capable GPU to its limits for 1 hours. This is mean to reseat thermal paste or to measure sustained load on Powersupply units.
#secs=7200
#secs=3600
secs=2400
#secs=1200
#secs=400
#secs=10
SECONDS=0
stress --cpu 12 -v --timeout $secs & (while (( $SECONDS < $secs )); do sleep 1; clear; glmark2 --fullscreen ; sleep 1; done)
