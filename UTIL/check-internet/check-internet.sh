#!/bin/sh

wget --spider --quiet http://example.com
if [ "$?" != 0 ]; then
  mpv sound.mp3 --no-terminal && echo "No internet"
else
  echo "Connected"
fi
