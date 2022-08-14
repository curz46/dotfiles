#!/bin/sh
intern=eDP-1
extern=HDMI-A-2

xrandr=wlr-randr

if $xrandr | grep "$extern disconnected"; then
        $xrandr --output "$extern" --off --output "$intern" --preferred
    else
        $xrandr --output "$intern" --off --output "$extern" --preferred
fi
