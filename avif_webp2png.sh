#!/bin/bash

#This script should convert all webp and avif files in the curent directory to png format. Needs dependencies[TODO]:
#

find . -name "*.avif" -exec convert {} {}.png \;

find . -name "*.webp" -exec dwebp {} -o {}.png \;


