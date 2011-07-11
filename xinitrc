#!/bin/sh

xscreensaver -no-splash &
xsetroot -cursor_name left_ptr
setxkbmap is
exec xmonad
