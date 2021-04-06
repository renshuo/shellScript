#!/bin/sh

tonormal(){
    xrandr --output DP-0 --primary --mode 1920x1080 --pos 1920x0 --rotate normal \
           --output HDMI-0 --off \
           --output DVI-D-0 --mode 1920x1080 --pos 0x0 --rotate normal \
           --output DP-1 --off
    xrandr --dpi 96
}

if [ -z $1 ]
then
    tonormal
else
    if [ $1 == "1" ]
    then
        xrandr --output DP-0 --primary --mode 1920x1080 --pos 1920x0 --rotate normal \
               --output HDMI-0 --off \
               --output DVI-D-0 --mode 1920x1080 --pos 0x0 --rotate left \
               --output DP-1 --off
    fi
fi
