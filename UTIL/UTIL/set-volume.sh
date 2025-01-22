#!/bin/sh

read -p "Set volume: " volume

[[ $(($volume)) -gt 150 ]] && exit

bash -c "pactl set-sink-volume @DEFAULT_SINK@ ${volume}%"
