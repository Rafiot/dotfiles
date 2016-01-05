#!/bin/bash

curl -LSso ./_vim/autoload/pathogen.vim https://raw.githubusercontent.com/tpope/vim-pathogen/master/autoload/pathogen.vim

git submodule foreach git checkout master
git submodule foreach git pull

pip install --user --upgrade setuptools pip
pip install --user --upgrade flake8 pew
