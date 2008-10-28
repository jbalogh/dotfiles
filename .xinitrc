xsetroot -cursor_name left_ptr

export OOO_FORCE_DESKTOP=gnome

xmodmap ~/.Xmodmap

~/src/keynav/keynav &

FG='#a8a3f7'
BG='#3f3c6d'

gnome-settings-daemon &
#/usr/libexec/gnome-volume-manager --sm-disable &
#gnome-power-manager &

xrdb -merge .Xresources
urxvtd -q -f -o &
urxvtc &
feh --bg-tile `~/.pics/randarg.py ~/.pics/*.jpg` &

dbus-launch xmonad &

wait $!
wait
# vim: ft=sh
