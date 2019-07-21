# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export XDG_CONFIG_HOME="$HOME/.config"
export PATH=$PATH:~/.scripts
export ASKPASS=dmenu_askpass
alias ls='ls --color=auto'
alias v=nvim
PS1='[\u@\h \W]\$ '
alias config='/usr/bin/git --git-dir=/home/seth/.dotfiles/ --work-tree=/home/seth'
alias ls='ls -hN --color=auto --group-directories-first'
alias grep='grep --color=auto'
alias diff='diff --color=auto'
