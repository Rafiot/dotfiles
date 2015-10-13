#!/bin/bash

curl -LSso ./_vim/autoload/pathogen.vim https://raw.githubusercontent.com/tpope/vim-pathogen/master/autoload/pathogen.vim

git submodule foreach git checkout master
git submodule foreach git pull

sudo pip install --upgrade flake8
