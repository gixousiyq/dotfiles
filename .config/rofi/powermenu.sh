#! /bin/sh

chosen=$(printf "\n\n\n" | rofi -dmenu -i -theme-str '@import "~/.config/rofi/powermenu.rasi"')

case "$chosen" in
	"") swaylock ;;
	"") swaymsg exit ;;
	"") reboot ;;
	"") shutdown now ;;
	*) exit 1 ;;
esac
