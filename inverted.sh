#!/bin/sh

#portrait (inverted)

xrandr -o inverted
xinput set-prop "Raydium Corporation Raydium Touch System" --type=float "Coordinate Transformation Matrix" -1 0 1 0 -1 1 0 0 1
xinput set-prop "DELL0741:00 06CB:7E7E Touchpad" --type=float "Coordinate Transformation Matrix" -1 0 1 0 -1 1 0 0 1
