#!/bin/sh
# Takes an int argument writes it to the appropriate backlight file
# Add inc / dec functionality

# curr=$(cat /sys/class/leds/smc::kbd_backlight/brightness)

# new=$(($curr + $1))
# a=0
z=255

if [ "$1" -lt "$z" ]; then
  sudo tee /sys/class/leds/smc::kbd_backlight/brightness <<< $1
fi
