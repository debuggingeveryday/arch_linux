#!/bin/sh

selected=$(pactl list short sources | grep 'input' | fzf | awk '{print $1}')
pacmd set-default-source $selected
