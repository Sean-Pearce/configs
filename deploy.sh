#!/bin/sh

configs="bashrc inputrc vimrc tmux.conf"
for f in $configs
do
    ([ -L "$HOME/.$f" ] || [ -f "$HOME/.$f" ]) && rm "$HOME/.$f"
    ln -s "$(pwd)/$f" "$HOME/.$f"
done
