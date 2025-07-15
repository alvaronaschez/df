#!/usr/bin/bash

if [ -d /sys/class/power_supply/BAT0 ]
then
    echo 60 > /sys/class/power_supply/BAT0/charge_control_start_threshold
    echo 80 > /sys/class/power_supply/BAT0/charge_control_end_threshold
fi

if [ -d /sys/class/power_supply/BAT1 ]
then
    echo 60 > /sys/class/power_supply/BAT1/charge_control_start_threshold
    echo 80 > /sys/class/power_supply/BAT1/charge_control_end_threshold
fi

