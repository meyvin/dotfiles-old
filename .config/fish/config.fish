#####
##  Fish configuration
#####

set -U fish_greeting

#####
##   Aliases
#####

alias gl="git pull"
alias gp="git push"
alias gca="git commit -v -a"
alias gcm="git checkout main"
alias grh="git reset HEAD"
alias grs="git remote set-url origin"
alias ls="exa -lhg --git --group-directories-first"
alias pacinst="sudo pacman -S"
alias pacrem="sudo pacman -Rsc"
alias pacup="sudo pacman -Syu"
alias pacsearch="sudo pacman -Ss"
alias parinst="paru -S"
alias parrem="paru -Rsc"
alias parup="paru -Syu"
alias parsearch="paru -Ss"
alias vi="vim"

#####
## Exports
#####

## Sway
set -x _JAVA_AWT_WM_NONREPARENTING 1
set -x LIBSEAT_BACKEND logind
set -x MOZ_ACCELERATED 1
set -x MOZ_DBUS_REMOTE 1
set -x MOZ_ENABLE_WAYLAND 1
set -x MOZ_WEBRENDER 1
#set -x WLR_NO_HARDWARE_CURSORS 1
set -x XDG_CURRENT_DESKTOP Sway
set -x XDG_SESSION_TYPE Wayland

## Applications
set -x BROWSER firefox-developer-edition
set -x EDITOR vim
set -x IMAGE sxiv
set -x OPENER xdg-open
set -x QT_QPA_PLATFORM xcb
set -x READER zathura
set -x TERMINAL feet
set -x VISUAL vim
set -x VIDEO celluloid

## Gnome
set -x GTK_THEME Bubble-Darker-Blue
