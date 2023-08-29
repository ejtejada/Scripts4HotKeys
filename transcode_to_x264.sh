#!/bin/bash 
#@llogan
#https://stackoverflow.com/a/62236652
ffmpeg -ss 00:03:00 -i "input file x265.mkv" -t 00:00:50 -map 0 -c copy -c:v libx264 -crf 18 "output file x264.mkv"
#WIN batch version
#@Logan Booker
#https://www.lifehacker.com.au/2016/06/bad-movie-playback-on-your-raspberry-pi-time-to-re-encode-your-videos/
#for %%i in (*.mkv) do ffmpeg -i "%%i" -c:a copy -sn -map 0:0 -map 0:1 -vcodec libx264 "output%%i"
