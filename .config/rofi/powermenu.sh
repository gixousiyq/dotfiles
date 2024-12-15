#! /bin/sh

chosen=$(printf "\n\n\n" | rofi -dmenu -i -theme-str '@import "~/.config/rofi/powermenu.rasi"')

case "$chosen" in
	"") hyprlock ;;
	"") loginctl kill-session $XDG_SESSION_ID exit ;;
	"") reboot ;;
	"") shutdown now ;;
	*) exit 1 ;;
esac
