#!/bin/bash

# Downloading Plugin File
mkdir -p ~/.vim/autoload && cp plug.vim ~/.vim/autoload/

# Copy Install vim configurationf ile
cp vimrc ~/.vimrc

# Start vim and install plugins
vim -c "PlugUpdate"
