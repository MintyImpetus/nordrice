#!/bin/bash

while :
do
	xsetroot -name " [ $(xrandr | grep " connected" | cut -f1 -d " ") ] [ $(amixer -c 1 get 'Master',0 | grep "Mono: Playback" | cut -c 22- | cut -c -5) ] [ $(timedatectl | grep "RTC time:" | cut -c 43-) ] [ +$(cat /sys/class/power_supply/BAT0/capacity)% ] " 
	echo "Updated Bar"
	sleep 1
done
