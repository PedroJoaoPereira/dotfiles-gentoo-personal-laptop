# set monitor settings
xrandr -s 1920x1080 -r 48

# set keyboard layout to portuguese
setxkbmap pt

# set mouse properties
xinput set-prop "DELL08B8:00 0488:121F Touchpad" "libinput Tapping Enabled" 1
xinput set-prop "DELL08B8:00 0488:121F Touchpad" "libinput Natural Scrolling Enabled" 1

# set up audio server
gentoo-pipewire-launcher &

# set up status bar
~/.scripts/refresh_status_bar.sh &

# set wallpaper
feh --bg-fill --randomize ~/.wallpaper/*

# start dwm
exec dbus-launch --sh-syntax --exit-with-session dwm

