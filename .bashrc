#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '
export PATH=$PATH:/home/orionlw/.cargo/bin
eval "$(gh copilot alias -- bash)"
alias config='/usr/bin/git --git-dir=/home/orionlw/.cfg/ --work-tree=/home/orionlw'
