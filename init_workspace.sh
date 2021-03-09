#!/usr/bin/env bash

sudo apt-get update && sudo apt-get upgrade
sudo apt-get install -y curl wget git build-essential zsh
sudo cp ./.* $HOME/
zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
sudo apt remove --purge vim
sudo apt-get install -y python3-dev ruby-dev liblua5.3-dev lua5.3 libperl-dev perl libgtk-3-dev xorg-dev cscope
mkdir -p ~/Downloads
cd ~/Downloads	
git clone https://github.com/vim/vim
cd ~/Downloads/vim
./configure --with-features=huge --enable-python3interp --enable-rubyinterp --enable-luainterp --enable-perlinterp --enable-gui=gtk3 --enable-cscope --with-python3-command=python3 --prefix=/usr
sudo make -j
sudo make install -j

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

