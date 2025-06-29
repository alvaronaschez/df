EDITOR=kak

#set -o vi # already set in ~/.inputrc
PS0="\e[2 q" # restore cursor to block before entering app (eg. vim)

if [[ $PATH != *':/usr/sbin'* ]]; then
  PATH="$PATH:/usr/sbin"
fi

# apt
alias update='sudo apt update -y && sudo apt upgrade -y'
alias clean='sudo apt autoremove && sudo apt autoclean'
alias install='sudo apt install'
alias uninstall='sudo apt purge'

# ls
alias l='ls -al'
alias la='ls -a'
alias ll='ls -l'

# help
alias h='cat ~/help.txt'

# apps
BASHRC='~/.config/bash/bashrc.bash'
alias ebash="$EDITOR $BASHRC"
alias sbash="source $BASHRC"

alias esway="$EDITOR ~/.config/sway/config"
alias ssway='sway reload'

alias ekak="$EDITOR ~/.config/kak/kakrc"

if [ "$TERM" = "linux" ]; then
  echo -en "\e]P0232323"
  echo -en "\e]P82B2B2B"
  echo -en "\e]P1D75F5F"
  echo -en "\e]P9E33636"
  echo -en "\e]P287AF5F"
  echo -en "\e]PA98E34D"
  echo -en "\e]P3D7af87"
  echo -en "\e]Pbffd75f"
  echo -en "\e]p48787af"
  echo -en "\e]pc7373c9"
  echo -en "\e]p5bd53a5"
  echo -en "\e]pdd633b2"
  echo -en "\e]p65fafaf"
  echo -en "\e]pe44c9c9"
  echo -en "\e]p7e5e5e5"
  echo -en "\e]p000000"
  clear
fi

