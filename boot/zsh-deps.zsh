# fetch zsh deps
source $GIT_ROOT/zsh/deps-location.zsh
mkdir -p $deps && cd $deps

ningrab Tarrasch/bd
ningrab supercrabtree/k
ningrab ninrod/docker-zsh-completion
ningrab zsh-users/zsh-completions
ningrab zsh-users/zsh-syntax-highlighting
ningrab seebi/dircolors-solarized
