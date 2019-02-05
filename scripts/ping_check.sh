#!/bin/bash
PING=`ping -c 1 8.8.8.8 | grep "64 bytes" | awk '{ print $7 }' | awk -F= '{ print $2}'`

if [ $PING -lt "300" ]; then
 mkdir -p ~/.config/i3status/network_ping
 echo $PING > ~/.config/i3status/network_ping/ping
 sleep 5
 exit 0
fi

rm -f ~/.config/i3status/network_ping
exit 0
