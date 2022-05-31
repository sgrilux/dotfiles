#!/bin/bash

i3status --config ~/.config/i3/i3status.conf | while :
do
  read line
  LG=$(setxkbmap -query | awk '/layout/{print $2}')
  dat="[{ \"full_text\":\"lang:$LG\", \"color\": \"#FDE74C\"},"
  echo "${line/[/$dat}" || exit 1
done
