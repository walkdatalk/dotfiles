# dotfiles

This repo is for your dotfiles.
This repo should be cloned to your home directory so that the path is `~/dotfiles/` .
The included shell script, `make_symlink.sh` creates symlinks of your dotfiles in your home directory.

The shell script is going to make a new directory called `~/dotfiles_old` and put your existing dotfiles into it.
Therefore, you do not need to afraid to lose your exisitng dotfiles.

The script also install `zsh` if you comment in the function called `install_zsh`.
The setup of `oh-my-zsh` and changing default shell to zsh are available by the function.

All you have to do is to change the `files` variable in the shell script for your setup.

## installation
```
git clone git@github.com:walkdatalk/dotfiles.git
cd ~/dotfiles
./make_symlink.sh
```

use https://github.com/powerline/fonts
otherwise the characters will be corrupt.
