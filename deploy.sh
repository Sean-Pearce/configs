#!/bin/bash

configs=`ls | grep -v deploy.sh | grep -v README.md`
for f in $configs
do
    if [[ -f "$HOME/.$f" && ! -L "$HOME/.$f" ]]; then
        mv $HOME/.$f{,.bak}
    fi
    if [[ -L "$HOME/.$f" ]]; then
        rm "$HOME/.$f"
    fi
    ln -s "$(pwd)/$f" "$HOME/.$f"
done
