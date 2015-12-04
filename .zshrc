# tema do oh-my-zsh
ZSH_THEME="powerlevel9k/powerlevel9k"

# plugins do oh-my-zsh
plugins=(zsh-syntax-highlighting nin-vi-mode)

# configs para o powerlevel9k theme
POWERLEVEL9K_DISABLE_RPROMPT=false
POWERLEVEL9K_SHORTEN_DIR_LENGTH=1
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status vi_mode)

# Config do user
export LANG=en_US.UTF-8
export TERM=xterm-256color
export EDITOR=vim

# config do path
export RACER_PATH=~/code/lib/rust/racer/target/release
export RUST_SRC_PATH=~/code/lib/rust/src/src
export GNUBIN_PATH=/usr/local/opt/coreutils/libexec/gnubin
export TEXBIN=/Library/TeX/texbin
PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
PATH="$RACER_PATH:$PATH"
PATH="$GNUBIN_PATH:$PATH"
PATH="$TEXBIN:$PATH"
export PATH

# cores para o ls
eval `dircolors ~/.lscolors`

# inicialização do fasd
eval "$(fasd --init auto)"

# bootstrap do oh-my-zsh
export ZSH=$HOME/.oh-my-zsh
source $ZSH/oh-my-zsh.sh

# alguns alias uteis
alias c='clear'
alias e='exit'
alias p='pwd'
alias n='node'
alias v='vim'
alias o='open'
alias vi='vim'
alias vz='vim ~/.zshrc'
alias tarc='tar -zcvf'
alias tarx='tar -zxvf'

alias gsl='git status'
alias gs='git status --short'
alias ga='git add'
alias gc='git commit -v'
alias gl='git log --oneline'
alias gp='git push'
alias gf='git fetch'

# configs do zsh
setopt extended_glob
