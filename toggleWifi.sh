#!/bin/bash

WIFISTATUS=`nmcli radio wifi`
if [ "$WIFISTATUS" == "disabled" ];
then
    nmcli radio wifi on
else
    nmcli radio wifi off
fi
