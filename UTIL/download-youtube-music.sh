#!/bin/sh

# pacman -Sy yt-dlp

MUSIC_PATH="$HOME/Music"

read -p "title: " name
read -p "yt link: " link

yt-dlp --extract-audio --audio-format mp3 --output "${MUSIC_PATH}/${name}.mp3" "${link}"
