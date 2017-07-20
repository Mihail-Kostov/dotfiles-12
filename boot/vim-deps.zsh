# setup vim deps dir
mkdir -p $vim_deps && cd $vim_deps

# fetch core editing deps
ningrab bronson/vim-visual-star-search
ningrab chaoren/vim-wordmotion
ningrab ervandew/supertab
ningrab jiangmiao/auto-pairs
ningrab ninrod/vim-multiple-cursors
ningrab tommcdo/vim-exchange
ningrab tpope/vim-commentary
ningrab tpope/vim-pathogen
ningrab tpope/vim-repeat
ningrab tpope/vim-surround
ningrab vim-scripts/ReplaceWithRegister
ningrab wellle/targets.vim
ningrab kana/vim-textobj-user
ningrab kana/vim-textobj-entire

# fetch cosmetic deps
ningrab ninrod/gruvbox develop # just while I wait for morhetz/gruvbox#150 to merge.
ningrab itchyny/lightline.vim

# pathogen installation
PATHOGEN_FILE=$vim_deps/tpope/vim-pathogen/autoload/pathogen.vim
AUTOLOAD_DIR=~/.vim/autoload
[[ ! -d  $AUTOLOAD_DIR ]] && mkdir -p $AUTOLOAD_DIR
cp $PATHOGEN_FILE ~/.vim/autoload
