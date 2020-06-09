#!/bin/sh
set -e

cd ~/.vim_runtime

echo 'set runtimepath+=~/.vim_runtime
source ~/.vim_runtime/my_configs.vim
source ~/.vim_runtime/my_plugins.vim
' > ~/.vimrc

echo "Installed the Ultimate Vim configuration successfully! Enjoy :-)"
