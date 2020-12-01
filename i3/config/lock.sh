#!/usr/bin/env bash

icon="$HOME/.config/i3/lockIcon_dual.png"
tmpbg="$HOME/.cache/i3/screen.png"

(( $# )) && { icon=$1; }

scrot "$tmpbg"

convert "$tmpbg" -scale 5% -scale 2000% "$tmpbg"
#convert "$tmpbg" -blur 0x8 "$tmpbg"
convert "$tmpbg" "$icon" -gravity center -composite -matte "$tmpbg"
i3lock -u -i "$tmpbg"

rm $tmpbg

