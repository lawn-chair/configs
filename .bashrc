#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Shell options
shopt -s cdspell
shopt -s checkwinsize
shopt -s cmdhist
shopt -s dotglob
shopt -s expand_aliases
shopt -s extglob
shopt -s histappend
shopt -s hostcomplete
shopt -s nocaseglob

export HISTSIZE=10000
export HISTFILESIZE=${HISTSIZE}
export HISTCONTROL=ignoreboth

set echo-control-characters off

# Export defaults

if [ -f ~/.exports ]; then
	    . ~/.exports
fi

# Bash completion

if [ -f /etc/bash_completion ]; then
	    . /etc/bash_completion
fi

# Import aliases
if [ -f ~/.bash_aliases ]; then
    source ~/.bash_aliases
fi

