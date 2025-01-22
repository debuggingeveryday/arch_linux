#!/bin/sh

selected=$(pactl list short sinks | fzf | awk '{print $1}')
pacmd set-default-sink $selected
