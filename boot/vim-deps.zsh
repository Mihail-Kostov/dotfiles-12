# setup vim deps dir
mkdir -p $vim_deps && cd $vim_deps

# fetch core editing deps
ningrab tpope/vim-pathogen
ningrab bronson/vim-visual-star-search
ningrab chaoren/vim-wordmotion
ningrab ervandew/supertab
ningrab jiangmiao/auto-pairs
ningrab junegunn/vim-easy-align
ningrab ninrod/vim-multiple-cursors
ningrab tommcdo/vim-exchange
ningrab tpope/vim-commentary
ningrab tpope/vim-repeat
ningrab tpope/vim-surround
ningrab wellle/targets.vim

# fetch cosmetic deps
ningrab dracula/vim
ningrab nanotech/jellybeans.vim
ningrab tomasr/molokai
ningrab colepeters/spacemacs-theme.vim
ningrab chriskempson/base16-vim
ningrab itchyny/lightline.vim
ningrab felixjung/vim-base16-lightline
ningrab edkolev/tmuxline.vim
ningrab luochen1990/rainbow

