EDITOR=kak

#set -o vi # already set in ~/.inputrc
PS0="\e[2 q" # restore cursor to block before entering app (eg. vim)

if [[ $PATH != *':/usr/sbin'* ]]; then
  PATH="$PATH:/usr/sbin"
fi

PATH="$PATH:$HOME/.cargo/bin"

# apt
alias update='sudo apt-get update -y && sudo apt-get dist-upgrade -y'
alias clean='sudo apt-get autopurge'
alias install='sudo apt-get install'
alias uninstall='sudo apt-get purge'

# ls
alias l='ls -al'
alias la='ls -a'
alias ll='ls -l'

# trash
alias dl='trash-put'
alias del='trash-put'

# git
alias gp='git push'
alias gf='git push force --with-lease'
alias gss='git status --short'
alias gst='git status'
alias gd='git diff'
alias gcm='git commit -m'
alias gaa='git add .'

# cd
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

# help
alias h='cat ~/help.txt'

# misc
#alias battery='upower -e | head -1 | xargs upower -i'
alias power='upower -e | head -1 | xargs upower -i | awk '\''/percentage:/ {p=$2}; /state:/ {s=$2}; END{print p" "s}'\'

# apps
BASHRC='~/.config/bash/bashrc.bash'
alias ebash="$EDITOR $BASHRC"
alias sbash="source ~/.bashrc"

READLINE='~/.config/readline/inputrc'
alias ereadline="$EDITOR $READLINE"
alias sreadline="bind -f ~/.inputrc"

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

. "$HOME/.cargo/env"

