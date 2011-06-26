#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

xscreensaver -no-splash &
xsetroot -cursor_name left_ptr
setxkbmap is
exec xmonad
