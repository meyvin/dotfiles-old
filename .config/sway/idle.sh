#!/bin/sh

swayidle -w -d \
	timeout 300 '~/.config/sway/lock.sh -f --grace 12 --fade-in 10' \
  timeout 600 'swaymsg "output * dpms off"' \
    resume  'swaymsg "output * dpms on"'  \
  timeout 900 'systemctl suspend ' \
  before-sleep 'pgrep swaylock || ~/.config/sway/lock.sh -f --fade-in 0 && true'

