#!/bin/bash
#This script depends on a recentish version of apcaccess installed and running a running apcupsd daemon running and connected to a APC ups.

NOMPOWER=$(apcaccess -u -p 'NOMPOWER')
LOADPCT=$(apcaccess -u -p 'LOADPCT')

#echo "${NOMPOWER}*${LOADPCT}/100.00" | bc
POWERDRAW=$(bc <<< "scale=1;${NOMPOWER}*${LOADPCT}/100.00")
printf "POWER: $POWERDRAW W\n"
