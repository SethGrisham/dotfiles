# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias v=nvim
PS1='[\u@\h \W]\$ '
alias config='/usr/bin/git --git-dir=/home/seth/.dotfiles/ --work-tree=/home/seth'
