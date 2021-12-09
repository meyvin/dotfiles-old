# Sway
export _JAVA_AWT_WM_NONREPARENTING=1
export LIBSEAT_BACKEND=logind
export MOZ_ENABLE_WAYLAND=1
export WLR_NO_HARDWARE_CURSORS=1

# Applications
export BROWSER="firefox-developer-edition"
export EDITOR="vim"
export IMAGE="sxiv"
export OPENER="xdg-open"
export QT_QPA_PLATFORM=xcb
export READER="zathura"
export TERMINAL="alacritty"
export VISUAL="vim"
export VIDEO="vlc"

# Gnome
export GTK_THEME="Arc-Dark"

# nnn
export NNN_BMS="d:$HOME/Downloads;D:$HOME/Development;h:$HOME"
export NNN_FIFO=/tmp/nnn.fifo
export NNN_PLUG="p:preview-tabbed"

typeset -U PATH path
path=("$HOME/.local/bin" "$path[@]")

export PATH
