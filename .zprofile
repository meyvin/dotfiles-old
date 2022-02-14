#!/bin/zsh

#Automatically start sway if logged into tty1
if [[ -z $DISPLAY && $TTY = /dev/tty1 ]]; then
  exec sway  #  >> /home/vince/sway.log 2>&1
fi
