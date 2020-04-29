#!/bin/bash
#This script will stress the CPU on 12 threads and push a vulkan capable GPU to its limits for 3 hours. This is mean to reseat thermal paste or to measure sustained load on Powersupply unit.
while true; do sleep 1; clear; stress --cpu 12 -v --timeout 7200s & vulkan-smoketest; sleep 1; done
