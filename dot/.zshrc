# options {{{

# allows us to use ^ to negate globs
setopt extended_glob

# Setup the prompt with pretty colors
setopt prompt_subst

# change into a dir with just the directory name
setopt auto_cd

# history configuration options {{{

if [ -z "$HISTFILE" ]; then
    HISTFILE=$HOME/.zsh_history
fi

HISTSIZE=10000
SAVEHIST=10000
setopt append_history
setopt extended_history
setopt hist_expire_dups_first

# ignore duplication command history list
setopt hist_ignore_dups

setopt hist_ignore_space
setopt hist_verify
setopt inc_append_history
setopt share_history # share command history data

# }}}

# Changing/making/removing directory
setopt auto_pushd
setopt pushd_ignore_dups
setopt pushdminus

WORDCHARS='*?_-.[]~=&;!#$%^(){}<>'

# }}}

# PATH and exports {{{

export LANG=en_US.UTF-8
export TERM=xterm-256color
export EDITOR=vim
export ENHANCD_COMMAND=d

# path config
export GNUBIN_PATH=/usr/local/opt/coreutils/libexec/gnubin
export TEXBIN=/Library/TeX/texbin
export PACKER_BIN=~/bin/packer_0.8.6_darwin_amd64
export ZPLUG_BIN=~/.zplug/bin
PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
PATH="$GNUBIN_PATH:$PATH"
PATH="$TEXBIN:$PATH"
PATH="$PACKER_BIN:$PATH"
PATH="$ZPLUG_BIN:$PATH"
export PATH

# }}}

# zplug {{{

source ~/.zplug/zplug

# completion {{{

zplug "zsh-users/zsh-completions"
zplug "felixr/docker-zsh-completion", if:"which docker", of:_docker

# }}}

# theme and appearance {{{

zplug "zsh-users/zsh-syntax-highlighting", nice:10
zplug "ninrod/nin-vi-mode"

# }}}

# better directory listings {{{

zplug "Tarrasch/zsh-bd"
zplug "b4b4r07/enhancd", of:enhancd.sh
zplug "rimraf/k"
zplug "rupa/z", of:z.sh

# }}}

if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    else
        echo
    fi
fi

zplug load

# }}}

# evals and sources {{{

# colors for GNU ls (from coreutils)
eval `dircolors ~/.lscolors`

# fzf bootstrap
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# }}}

# alias {{{

# colors for ls

# alias for frequent commands
alias ls='ls --color=auto --group-directories-first'
alias l='ls -lah'
alias c='clear'
alias e='exit'
alias m='nman'
alias n='node'
alias o='open'
alias t='tree -d'
alias vi='vim -u NONE'
alias v='vim'
alias vz='vim ~/.zshrc(:A)'
alias vv='vim ~/.vimrc(:A)'
alias tarc='tar -zcvf file.tar.gz'
alias tarx='tar -zxvf'
alias dot='l `find ~ -maxdepth 1 -type l`'
alias print='print -l'

# working with pushd and popd
alias di='dirs -v | head -n 10'
alias dic='dirs -c'
alias pu='pushd'
alias po='popd'

# directory manipulation
alias ..='cd ..'
alias md='mkdir -p'
alias rd='rm -r'
alias rdf='rm -rf'

# git alias
alias g='git status --short'
alias ga='git add'
alias gal='git add -A'
alias gb='git branch'
alias gc='git commit -v'
alias gd='git diff'
alias gf='git fetch'
alias gl='git log --pretty=format:"%C(yellow)%h%Creset %C(cyan)%ad%Creset %C(magenta)%an%Creset %s" --date=relative --graph'
alias gld='git log --pretty=format:"%C(yellow)%h%Creset %C(cyan)%ad%Creset %C(magenta)%an%Creset %s" --graph'
alias glf='git log --follow -p -- '
alias glnc='git log --pretty=format:"%h %ad %an %s" --date=short --graph'
alias gls='git log --graph --oneline'
alias gm='git merge'
alias gp='git push'
alias gs='git status'
alias gsd='git ls-files -d | sed "s/\/.*$//g" | sort | uniq'

# Ag (the silver searcher)
alias ag='ag --hidden --path-to-agignore=~/.agignore'

# }}}

# compinit {{{

autoload -Uz compinit && compinit
zstyle ':completion:*' menu select
zstyle ':completion:*' list-colors "${(@s.:.)LS_COLORS}"

# }}}

# functions {{{

# neoman vim plugin
function nman {
    if [[ -z $* ]]; then
        echo "What manual page do you want?"
        return
    fi
    local tmp=$IFS
    IFS=$'\n' out=($(command man -w $* 2>&1))
    local code=$?
    IFS=$tmp
    if [[ ${#out[@]} > 1 ]]; then
        echo "Too many manpages"
        return
    elif [[ $code != 0 ]]; then
        echo "No manual entry for $*"
        return
    fi
    vim -c "Nman $*"
}
compdef nman="man"

# front for `bc` utility (credit goes to arzzen/calc.plugin.zsh)
function = {
    echo "$@" | bc -l
}

# }}}

# prompt {{{

autoload -U colors && colors
PROMPT='%F{blue}%K{black}%1~%f%k %F{magenta}#%f '

# }}}
