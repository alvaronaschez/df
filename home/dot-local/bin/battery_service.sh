#!/usr/bin/bash
echo 60 > /sys/class/power_supply/BAT1/charge_control_start_threshold
echo 80 > /sys/class/power_supply/BAT1/charge_control_end_threshold

