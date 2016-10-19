# with help from @chadhs
# more info here: https://github.com/syl20bnr/spacemacs/issues/7140#issuecomment-252036519

if [[ -z ${EMACS+x} ]]; then

  export EDITOR="vim"

  # no delays when switching keymaps
  export KEYTIMEOUT=5
  # bootstrap vi-mode
  bindkey -v

  autoload -Uz edit-command-line
  zle -N edit-command-line
  bindkey -M vicmd 'gs' edit-command-line

  # bindkey -M vicmd '?' history-incremental-search-backward

  # trying to live without a customized vi-mode
  # zplug "${DOTPATH}/deps/ninrod/nin-vi-mode", from:local

else
  export EDITOR="emacsclient"
  bindkey -e
  ## command specific history search
  ### emacs bindings
  bindkey "^[[A" history-beginning-search-backward
  bindkey "^[[B" history-beginning-search-forward
fi
