# -*- mode: sh -*-

# ls
alias ls='ls --color=auto --group-directories-first -X'
alias l='ls -lh'
alias la='l -A'
alias lk='k -A --no-vcs'
alias ld='lk -d'
alias lf='lk -n'

# quick alias
alias c='clear'
alias q='exit'
alias b='builtin cd ..'
alias w='echo -e "$Blue ${"$(pwd)"/$HOME/~} ${Red}at ${Cyan}$(whoami)${Red}@${Yellow}$(hostname -s)$Red using $Yellow${0}$Purple ${DOT_PROMPT_CHAR:-$}${Rst}"'

# apps
alias ag='ag --hidden --path-to-agignore=~/.agignore'
alias tarc='tar -zcvf file.tar.gz'
alias tarx='tar -zxvf'

# zsh config
alias re='exec zsh'
alias r='echo -e "${Red}you have pressed \`r\`. careful. this repeats last command."'
alias dot='la $(find ~ -maxdepth 1 -type l)'

# dotfiles
alias boot='~/.dotfiles/install.zsh'
