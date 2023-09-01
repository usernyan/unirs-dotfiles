#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#variables
export EDITOR=helix
export VISUAL=helix
export TERMINAL=st

export GIT_EDITOR=helix

#XDG dirs
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.locat/state"
#XDG init
export XINITRC="$XDG_CONFIG_HOME/x11/xinitrc"

alias ls='ls --color=auto'

function exit_status() {
  RETURN_VAL=$?
  [ $RETURN_VAL -ne 0 ] && printf "%s" "$(tput setaf 1)[$RETURN_VAL]$(tput sgr0)"
}

#prompt
export PS1="\[$(tput bold)\]\[$(tput setaf 1)\][\[$(tput setaf 3)\]\u\[$(tput setaf 2)\]@\[$(tput setaf 4)\]\h \[$(tput setaf 5)\]\W\[$(tput setaf 1)\]]\[$(tput setaf 7)\]\`exit_status\`\\$ \[$(tput sgr0)\]"

#add every directory under ~/.local/bin to PATH
export PATH="$PATH:$( find ~/.local/bin -type d -printf %p: | sed 's/:$//' )"
