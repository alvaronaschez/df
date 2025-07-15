#!/usr/bin/env bash

# create some dirs so the symbolic links work as expected
mkdir -p $HOME/.config
mkdir -p $HOME/.local/bin
mkdir -p $HOME/.local/share

# create a couple of links by hand
echo 'source ~/.config/bash/bashrc.bash' >> ~/.bashrc
echo '$include ~/df/config/readline/inputrc' >> ~/.inputrc
echo 'PATH="$PATH:/usr/sbin"' >> ~/.profile

# enable battery service
sudo cp $HOME/df/home/dot-local/share/battery.service \
    /etc/systemd/system/
sudo systemctl enable battery.service

# use stow
./sync.sh


