#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

# Important System Aliases

alias p="doas pacman"
alias pi="doas pacman -S"
alias pu="doas pacman -Syyyu"

alias v="vim"
alias lf="lfub"

# Random other things

alias starbound="bash ~/GOGGames/Starbound/start.sh"

export PATH=/home/mi/.local/bin:$PATH
