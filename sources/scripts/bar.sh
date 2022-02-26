#!/bin/bash

while :
do
batcap=$(cat /sys/class/power_supply/BAT0/capacity)
if [ $batcap -lt 10 ]; then
	notify-send "Battery VERY Low" -u=critical
elif [ $batcap -lt 25 ]; then
	notify-send "Battery Low" -u=normal
fi
playersong=$(playerctl --player=spotify metadata --format "Playing: {{ title }} - {{ artist }}") 
if [ -z "$playersong" ]; then
	playersong="Spotify Unavailable"
fi
	xsetroot -name " [ $playersong ] [ $(timedatectl | grep "RTC time:" | cut -c 43- | cut -c -5) ] [ +$batcap% ]" 
	echo "Updated Bar"
	sleep 2
done
