# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Install P10k Theme
ZSH_THEMES_HOME="${ZDOTDIR:-$HOME/.config/zsh}/themes"
if [[ -d $ZSH_THEMES_HOME/p10k ]]; then
  source $ZSH_THEMES_HOME/p10k/powerlevel10k.zsh-theme
else
  mkdir -p $ZSH_THEMES_HOME; git clone --depth=1 git@github.com:romkatv/powerlevel10k.git $ZSH_THEMES_HOME/p10k
fi

# Install PZ plugin manager
PZ_PLUGIN_HOME="${ZDOTDIR:-$HOME/.config/zsh}/plugins"
if [[ -d $PZ_PLUGIN_HOME/pz ]]; then
  source $PZ_PLUGIN_HOME/pz/pz.zsh
else
  mkdir -p PZ_PLUGIN_HOME; git clone git@github.com:mattmc3/pz.git $PZ_PLUGIN_HOME/pz
fi

# Install Docker Completion
DOCKER_COMPLETION_PATH="${ZDOTDIR:-$PZ_PLUGIN_HOME}/docker-completion"
if [[ -f $DOCKER_COMPLETION_PATH/_docker-compose ]]; then
  fpath=($DOCKER_COMPLETION_PATH $fpath)
else
  mkdir -p $DOCKER_COMPLETION_PATH; \
  curl \
  -L https://raw.githubusercontent.com/docker/compose/1.29.2/contrib/completion/zsh/_docker-compose \
  -o $DOCKER_COMPLETION_PATH/_docker-compose
fi

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Plugins
pz source lukechilds/zsh-nvm
pz source zsh-users/zsh-autosuggestions
pz source zsh-users/zsh-syntax-highlighting

# Auto completion
autoload -Uz compinit; compinit -i

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
alias grs"git remote set-url origin"
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
alias scratchterm="alacritty --config-file $HOME/.config/alacritty/scratchterm.yml -t scratchterm & disown"
alias screen-record='wf-recorder -g "$(slurp)" -f "$HOME/Videos/$(date +%d-%m-%Y_%H-%M-%S).mp4"'

# ZSH Functions
n () 
{
  if [ -n $NNNLVL ] && [ "${NNNLVL:-0}" -ge 1 ]; then
    echo "nnn is already running"
    return
  fi

  export NNN_TMPFILE="${XDG_CONFIG_HOME:-$HOME/.config}/nnn/.lastd"

  nnn "-dP $@"

  if [ -f "$NNN_TMPFILE" ]; then
    . "$NNN_TMPFILE"
    rm -f "$NNN_TMPFILE" > /dev/null
  fi
}


# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
