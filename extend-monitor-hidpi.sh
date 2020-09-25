#!/bin/bash

# Assumes that our global DPI default is for the Highest Resolution Monitor

# --scale 2x2:       Our external monitor scale is 2x of our 4K monitor.
# --output <Name>:   Just run xrandr without arguments to list device names.
# --mode:            The supported mode of the --output monitor.
# --fb:              1920 * 2 x 1080 * 2 + 1080, or 3840x3240. Sets this monitors to fit this space.
# --pos:             Set my external monitor's location starting at 0x0
xrandr --output DP1  --scale 2x2 --mode 1920x1080 --fb 3840x3240 --pos 0x0

# --scale 1x1:       Our laptop monitor is equal to our global DPI setting.
# --pos 960x2160:    Move our screen down so it does not overlap the external monitor. (1920 * 2 - 1920) / 2 x 1080 * 2, or 960x2160
# xrandr --output eDP1 --scale 1x1 --pos 960x2160
xrandr --output eDP1 --scale 1x1 --pos 0x2160
