#!/bin/bash

filename='/boot/config.txt'

echo "" >> $filename
echo "# PiMod Zero Audio Setup" >> $filename
echo "dtoverlay=pwm-2chan,pin=18,func=2,pin2=19,func2=2" >> $filename
echo "dtoverlay=audremap,enable_jack=on" >> $filename
echo "" >> $filename
