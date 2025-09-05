#!/bin/bash

current_resolution=$(hyprctl monitors | grep 0x0 | awk '{ print $1 }')
ultrawide="5120x1440@239.76100"
gaming="2560x1440@239.76100"

echo "Ultrawide:" $ultrawide
echo "Current:" $current_resolution

if [ "$current_resolution" == "$ultrawide" ]; then
  echo "switching to gaming"
  hyprctl keyword monitor DP-1, 2560x1440@240, 0x0, 1
else
  echo "switching to ultrawide"
  hyprctl keyword monitor DP-1, 5120x1440@240, 0x0, 1
fi

# hyprctl keyword monitor DP-1, 5120x1440@240, 0x0, 1
