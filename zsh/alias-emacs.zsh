# -*- mode: sh -*-

# standard
alias emacs="emacs.sh"
alias em="background-emacs.sh"

# daemon
alias e="connect-emacs-daemon.sh"
alias ed="up-emacs-daemon.sh"
alias ek="kill-emacs-server.sh"
alias er="ek && ed"
alias eu="ps aux | ag 'macs.*\-daemon'"