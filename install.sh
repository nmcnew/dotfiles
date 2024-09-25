#!/bin/bash
parent_path=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P)
ln -s $parent_path/.zshrc $HOME/.zshrc
ln -s $parent_path/.bashrc $HOME/.bashrc
ln -s $parent_path/kitty/ $HOME/.config/kitty
