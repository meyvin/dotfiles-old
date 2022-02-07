# Sway
export _JAVA_AWT_WM_NONREPARENTING=1
export LIBSEAT_BACKEND=logind
export MOZ_ACCELERATED=1
export MOZ_DBUS_REMOTE=1
export MOZ_ENABLE_WAYLAND=1
export MOZ_WEBRENDER=1
export SSH_AUTH_SOCK
export WLR_NO_HARDWARE_CURSORS=1
export XDG_RUNTIME_DIRS=$XDG_RUNTIME_DIRS:/var/lib/flatpak/exports/share:~/.local/share/flatpak/exports/share
export XDG_SESSION_TYPE=wayland

# Applications
export BROWSER="firefox-developer-edition"
export EDITOR="vim"
export IMAGE="sxiv"
export OPENER="xdg-open"
export QT_QPA_PLATFORM=xcb
export READER="zathura"
export TERMINAL="feet"
export VISUAL="vim"
export VIDEO="celluloid"

# Gnome
export GTK_THEME="Arc-Dark"

# nnn
export NNN_BMS="d:$HOME/Downloads;D:$HOME/Development;h:$HOME"
export NNN_FIFO=/tmp/nnn.fifo
export NNN_PLUG="p:preview-tabbed"

# ZSH
export HISTFILE=~/.histfile
export HISTSIZE=1000
export NVM_LAZY_LOAD=true
export SAVEHIST=1000
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#757575"

typeset -U PATH path
path=("$HOME/.local/bin" "$path[@]")

export PATH
