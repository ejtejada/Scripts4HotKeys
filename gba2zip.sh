#!/bin/bash

for file in *.gba; do
    [ -f "$file" ] || break
    zip "$file".zip "$file"
done



for f in *.gba.zip
do
    [ -f "$f" ] && mv -- "$f" "${f%.gba.zip}.zip"
done

