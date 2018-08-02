#!/bin/bash

sudo apt-get install vim vim-scripts vim-nox pylint build-essential curl\
                     exuberant-ctags tmux fonts-inconsolata htop python-pip \
                     python-virtualenv


pip install --user --upgrade setuptools pip
pip install --user --upgrade flake8 pew

git rm -r --cached _vim/bundle/
rm -rf _vim/bundle/*

git submodule add --force https://github.com/scrooloose/syntastic.git _vim/bundle/syntastic
git submodule add --force https://github.com/pgilad/vim-skeletons.git _vim/bundle/vim-skeletons

git submodule update --init --recursive

cp /usr/share/vim-scripts/colors/desert256.vim _vim/colors/
