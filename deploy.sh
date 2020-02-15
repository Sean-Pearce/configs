#!/bin/sh

if [ -L ~/.bashrc ]; then
    rm ~/.bashrc
fi

if [ -L ~/.vimrc ]; then
    rm ~/.vimrc
fi

if [ -L ~/.tmux.conf ]; then
    rm ~/.tmux.conf
fi

ln -s $(pwd)/bashrc ~/.bashrc
ln -s $(pwd)/vimrc ~/.vimrc
ln -s $(pwd)/tmux.conf ~/.tmux.conf

