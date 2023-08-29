#!/bin/bash

for file in *.cue #
	do chdman createcd -i "$file" -o "$file.chd"
done


