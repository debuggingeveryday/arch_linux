#/bin/sh

#picom &

SCREEN_SHOT_FILE_PATH="$HOME/Pictures/Screen Shot"

date=$(date '+%Y-%m-%d %H:%M:%S')
file_name="$date.png"

maim -u -f png -s -b 2 -c 0.35,0.55,0.85,0.25 -l "$SCREEN_SHOT_FILE_PATH/$file_name"
