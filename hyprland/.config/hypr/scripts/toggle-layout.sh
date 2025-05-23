#!/bin/bash

current_mode=$(hyprctl getoption general:layout | grep str | awk '{print $2}')
if [ ${current_mode} == 'master' ]; then
  hyprctl keyword general:layout dwindle
else
  hyprctl keyword general:layout master
fi
