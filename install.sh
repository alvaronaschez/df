#!/usr/bin/env bash

mkdir -p $HOME/.config
mkdir -p $HOME/.local/bin
mkdir -p $HOME/.local/share

echo 'source ~/.config/bash/bashrc.bash' >> ~/.bashrc
echo '$include ~/df/config/readline/inputrc' >> ~/.inputrc
echo 'PATH="$PATH:/usr/sbin"' >> ~/.profile

cp $HOME/df/home/dot-local/share/battery.service \
    /etc/systemd/system/
systemd enable battery.service

./sync.sh


