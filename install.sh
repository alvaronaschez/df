#!/usr/bin/env bash

echo 'source ~/.config/bash/bashrc.bash' >> ~/.bashrc
echo '$include ~/df/config/readline/inputrc' >> ~/.inputrc
echo 'PATH="$PATH:/usr/sbin"' >> ~/.profile

./sync.sh


