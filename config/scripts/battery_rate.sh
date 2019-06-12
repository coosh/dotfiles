#!/usr/bin/env bash

STATE=$(upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep state | awk '{ print $2 }')
RATE=$(upower -i /org/freedesktop/UPower/devices/battery_BAT0  | grep energy-rate | awk '{print $2}')

if [ $STATE == "discharging" ]; then
  ACTUAL=$(echo "scale=4;$RATE / -1" | bc -l)
  TTE=$(upower -i /org/freedesktop/UPower/devices/battery_BAT0  | grep "time to empty")
  TIME=$(echo "$TTE" | awk '{print $4}')
  TYPE=$(echo "$TTE" | awk '{print $5}') 
  OUTPUT="$ACTUAL $TIME $TYPE"
fi

if [ $STATE == "charging" ]; then
  ACTUAL=$RATE
  OUTPUT="$RATE"
fi

echo -n "$OUTPUT"
