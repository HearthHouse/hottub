#!/bin/bash

# disable wifi power management
# iwconfig wlan0 power off

cd "$(dirname "$0")"
node index.js &>> ../log.txt
# turn off circulation pump if program crashes for any reason
echo 0 > /sys/bus/gpio/devices/gpiochip0/gpio/gpio24/value
