# Ninrod's emacs, vim, zsh and tmux dotfiles

[![License GPL 3](https://img.shields.io/badge/license-GPL_3-green.svg)](http://www.gnu.org/licenses/gpl-3.0.txt)

* Simplicity, speed and power while working inside the shell.

## Screenshots

### Emacs: gruvbox theme
![emacs-config](https://raw.githubusercontent.com/ninrod/dotfiles/master/img/emacs-gruvbox-2016-10-11.png)

### Emacs: spacemacs theme
![emacs-config](https://raw.githubusercontent.com/ninrod/dotfiles/master/img/emacs-2016-10-09.png)

### Vim/Tmux on iTerm2 with [gruvbox](https://github.com/morhetz/gruvbox) (default)
![gruvbox-config](https://raw.githubusercontent.com/ninrod/dotfiles/master/img/shot-2016-06-16-gruvbox.png)

### Vim/Tmux on iTerm2 with [jellybeans](https://github.com/nanotech/jellybeans.vim)
![jellybeans-config](https://raw.githubusercontent.com/ninrod/dotfiles/master/img/shot-2016-06-15-jellybeans.png)

### Vim/Tmux on iTerm2 with [molokai](https://github.com/tomasr/molokai)
![molokai-config](https://raw.githubusercontent.com/ninrod/dotfiles/master/img/molokai.png)

## Important notice 

* These are my personal configuration files, which are in a constant state of change as I develop my environment across several systems. I can't guarantee that these configurations will work for you, at all. So if you encounter problems with them, like [this snippet](https://github.com/ninrod/dotfiles/blob/master/dot/zshrc#L4), you're pretty much on your own. Still, it can be useful and instructional to look around and take bits and snippets to use within your own configuration files. (this notice was based on [aaron bieber's dotfiles](https://github.com/aaronbieber/dotfiles))

## Install Instructions

* First off, I strongly recommend using [iTerm2](https://github.com/gnachman/iTerm2.git) on OSx.
* Secondly, this is for unix systems: `GNU/Linux`, `OSx`, etc... It should work on theory on windows, but I've faced a lot of configuration issues and ended up abandoning windows support.
* configure your terminal to use the [gruvbox theme](https://github.com/morhetz/gruvbox). There's a `conf` folder within this repo that can help you with that. 
* now get `vim` 7.4+ with [+clipboard](http://vimcasts.org/blog/2013/11/getting-vim-with-clipboard-support) and +python.
* get [tmux](https://github.com/tmux/tmux.git) 2.2+
* get [zsh](https://github.com/zsh-users/zsh.git) 5.2+ and make sure that `/bin/zsh` is valid. (if not: `$ cd /bin && sudo ln -s $(command -v zsh) zsh`)
* `cat /etc/shells` and verify that zsh appears on the list. If not, `sudo vi /etc/shells` and append `/bin/zsh`
* get [python2](http://python.org), python2-pip and `$ sudo pip install neovim`
* get [ag](https://github.com/ggreer/the_silver_searcher.git) (you can `brew install ag` on OSx).
* if you're on OSx, brew install these:
  * `brew install coreutils` (mainly because `BSD` `ls` `CLICOLOR` sucks).
  * `brew install reattach-to-user-namespace` (Mainly because of the `open` utility. [more info here](https://github.com/ChrisJohnsen/tmux-MacOSX-pasteboard.git)).
  * `brew install nvim`
  * `brew install diff-so-fancy`

* __Kind remark__: for the moment (until I change the script to back it up for you), I'll overwrite your `~/.gitconfig` file, so if you have something important in it, now would be the perfect moment to back it up.

* now open your shell and write this:

```sh
# clone dotfiles repo
$ git clone https://github.com/ninrod/dotfiles.git ~/.dotfiles

# run install script 
# basically the script does this:
# - mounts symlinks on your home folder;
# - creates ~/.options/shell-options.conf file, if not existent
# - overwrites your .gitconfig (so back it up if you have something important)
# - install/updates vim plugins
# - install fzf and zplug
$ ~/.dotfiles/install.zsh

# change git/github user info
$ vim ~/.options/shell-options.conf

# reload zsh
$ exec zsh
```

* note: the alias `v` is mapped to `nvim`. ([neovim](https://neovim.io/) is a fork of vim. It's my main editor.)

* That's it, your're all set.

## VIM: Powerful shell text editor. Tweaked with plugins.

### Custom binds and plugins

* To check out what binds and plugins I use in this config, my [vimrc](https://github.com/ninrod/dotfiles/blob/master/dot/vimrc) file is authoritative.

* That said, it is worth noting that I've remapped `<space>` to be an alias to the `<leader>` key.

## TMUX custom binds

bind                          | action
----------------------------- | ----------------------------------------------------------------------------------------
`ctrl + arrow`                | creates a new panel
`alt + arrow`                 | navigates to a panel
`F1...F5`                     | navigates to window `n`
`F6`                          | creates a new window
`F7`                          | renames current window
`F9`                          | alternates between preset layouts
`F10`                         | enter copy mode
`F11`                         | toggle mouse mode
`F12`                         | toggle tmux bar
`$ exit` or `$ q`             | closes the current panel. If the current panel is the last panel, the window is also closed.

LICENSE
-----------

[GNU General Public License v3](https://www.gnu.org/licenses/gpl-3.0.en.html)

LINKS
----------

[mantained since '15](https://github.com/ninrod/dotfiles/tree/212d09fb3859ca03d98aefbcd2c03c4e7d43b68e)
