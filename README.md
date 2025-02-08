# My Personal dotfiles.

## Install VIM

```shell
sudo apt update && sudo apt upgrade -y && \
sudo apt install -y vim
```

## Cloning This Repo.

```shell
# Cloning the repo.
git clone https://github.com/whyuhurtz/dotfiles

# Change dir to dotfiles.
cd dotfiles/

# Copy all dotfiles to $HOME dir.
cp .* $HOME
```

## ZSH Config File.

- I add some aliases at the bottom of my `~/.zshrc` file, such as **Python**, **wsrx**, etc.

```shell
# ... omitted ...
# WebSocketReflectorX Client
alias wsrx='/opt/wsrx/WebSocketReflectorX-0.3.3-linux64.AppImage &'

# Alias for Python
alias python3='/usr/local/python/3.13.1/bin/python3.13'
alias python='/usr/local/python/3.13.1/bin/python3.13'
alias pip3='/usr/local/python/3.13.1/bin/pip3.13'
alias pip='/usr/local/python/3.13.1/bin/pip3.13'
# ... omitted ...
```

## VIM Config File.

- After copying the `.vimrc` file to your $HOME, then we need to install `VimPlug` to be able to install some plugins. Here's the command.

```shell
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

## TMUX Config File.

- I just don't like how tmux haven't default scrolling with mouse / touchpad, so I basically adding a `set -g mouse on` to tmux config file.

## HOW TO: Remove Vim Plugins.

- Open `~/.vimrc` file and delete the plugin that you want to delete.
- Then, type the following command to delete the plugin directory under `~/.vim/plugged/`.

```shell
vim +PlugClean
```

