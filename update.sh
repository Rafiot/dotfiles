#!/bin/bash

curl -LSso ./_vim/autoload/pathogen.vim https://raw.githubusercontent.com/tpope/vim-pathogen/master/autoload/pathogen.vim

git submodule foreach git checkout master
git submodule foreach git pull

pip3 install --user --upgrade setuptools pip
pip3 install --user --upgrade flake8 pew
