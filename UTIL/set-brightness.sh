#!/bin/sh

read -p "Set brightness: " brightness

[ $(($brightness)) -gt 96000 ] && exit

echo "${brightness}" > /sys/class/backlight/intel_backlight/brightness
