export _JAVA_AWT_WM_NONREPARENTING=1
export BROWSER="firefox-developer-edition"
export EDITOR="vim"
export IMAGE="sxiv"
export LIBSEAT_BACKEND=logind
export MOZ_ENABLE_WAYLAND=1
export NVM_LAZY_LOAD=true
export OPENER="xdg-open"
export QT_QPA_PLATFORM=xcb
export READER="zathura"
export TERMINAL="alacritty"
export VISUAL="vim"
export VIDEO="vlc"
export XKB_DEFAULT_LAYOUT="us"
export XKB_DEFAULT_OPTIONS=compose:menu,level3:ralt_switch
export XKB_DEFAULT_VARIANT=altgr-intl

typeset -U PATH path
path=("$HOME/.local/bin" "$path[@]")

export PATH
