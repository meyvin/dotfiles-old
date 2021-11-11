# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Init znap
source ~/.zsh-plugins/zsh-snap/znap.zsh

# Theme
znap prompt romkatv/powerlevel10k

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Plugins
znap source lukechilds/zsh-nvm
znap source zsh-users/zsh-autosuggestions
znap source zsh-users/zsh-syntax-highlighting

# Plugin customisation
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#757575"

# History 
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

# Enable colors
autoload -U colors && colors

# vi mode
bindkey -v

# fix del key behaviour
bindkey "^[[3~" delete-char

zstyle ':completion:*' menu select
# Auto complete with case insenstivity
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
compinit


# ZSH Alias
alias vi="vim"
alias gl="git pull"
alias gp="git push"
alias gca="git commit -v -a"
alias gcm="git checkout main"
alias grh="git reset HEAD"
alias wg-up="wg-quick up wg0"
alias wg-down="wg-quick down wg0"
alias ssh="TERM=xterm-256color ssh"
alias pacinst="sudo pacman -S"
alias pacrem="sudo pacman -Rsc"
alias pacup="sudo pacman -Syu"
alias pacsearch="sudo pacman -Ss"
alias parinst="paru -S"
alias parrem="paru -Rsc"
alias parup="paru -Syu"
alias parsearch="paru -Ss"
alias refresh-mirrors="sudo reflector -c Netherlands -a 12 --sort rate --save /etc/pacman.d/mirrorlist"
alias screen-record='wf-recorder -g "$(slurp)" -f "$HOME/Videos/$(date +%d-%m-%Y_%H-%M-%S).mp4"'

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
