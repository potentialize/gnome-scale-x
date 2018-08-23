#!/bin/bash
OUTPUT=$1
SCREEN_WIDTH=1920
SCREEN_HEIGHT=1080
SCALE_FACTOR=${2:-1.5} # use 1.5 as default scale
PANNING_WIDTH=$( echo "scale=0; $SCREEN_WIDTH * $SCALE_FACTOR" / 1 | bc ) # Note: /1 needed to accept scale variable
PANNING_HEIGHT=$( echo "scale=0; $SCREEN_HEIGHT * $SCALE_FACTOR" / 1 | bc ) # Note: /1 needed to accept scale variable

# gnome zoom in
gsettings set org.gnome.desktop.interface scaling-factor 2

# xrandr zoom out
xrandr --output $OUTPUT --scale ${SCALE_FACTOR}x${SCALE_FACTOR} --panning ${PANNING_WIDTH}x${PANNING_HEIGHT}
