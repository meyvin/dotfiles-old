#!/bin/sh

swayidle -w -d \
	timeout 600 '~/.config/sway/scripts/lock.sh -f --grace 12 --fade-in 4' \
	timeout 900 'swaymsg "output * dpms off"' \
  timeout 930 'systemctl suspend' \
	resume 'swaymsg "output * dpms on"; sleep 2; swaymsg "output * enable"' \
	before-sleep 'pgrep swaylock || ~/.config/sway/lock.sh -f --fade-in 0 && true'
