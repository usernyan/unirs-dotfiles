#
# ~/.bashrc
#

# If not running interactively, don't do anything
[ $- != *i* ]] && return

#variables
EDITOR=helix
VISUAL=helix
TERMINAL=st

#XDG dirs
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.locat/state"
export XINITRC="$XDG_CONFIG_HOME/x11/xinitrc"

alias ls='ls --color=auto'

#prompt
export PS1="\[$(tput bold)\]\[$(tput setaf 1)\][\[$(tput setaf 3)\]\u\[$(tput setaf 2)\]@\[$(tput setaf 4)\]\h \[$(tput setaf 5)\]\W\[$(tput setaf 1)\]]\[$(tput setaf 7)\]\\$ \[$(tput sgr0)\]"

#vi keys
set -o vi
bind -m vi-command 'Control-l: clear-screen'
bind -m vi-insert 'Control-l: clear-screen'
