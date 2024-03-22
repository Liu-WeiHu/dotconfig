#!/usr/bin/env bash

theme="launchpad"
dir="$HOME/.config/rofi/launchers/misc"

rofi -x11 -no-lazy-grab -show drun -modi drun -theme ${dir}/${theme}.rasi
