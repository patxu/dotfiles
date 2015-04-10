# $Id: .bashrc,v 1.1 1997/06/24 05:15:12 testuser Exp $

# This file is sourced by bash in every shell.  After editing this
# file, type `source .bashrc' in any shell which is already open and
# in which you want the changes to take effect.  For more info type
# `man bash'.

# The latest official version of this file is available in ~testuser
# with earlier versions available under RCS control.

# --------------------------------------------------------------------

# Source master file.  If you are a power user or control freak, you
# may want to copy it to this location, i.e.
#
#	cp /usr/local/lib/templates/master.bashrc ~/.bashrc
#
# If you do this, however, future changes to the master copy will not
# affect your account.  If you have only minor customizations to make,
# you can simply add code either before or after sourcing the master
# file.

# Aliases

# used for cs50

alias mygcc='gcc -Wall -pedantic -std=c99'

# use the Aquamacs as default editor too

alias aemacs='open /Applications/Aquamacs\ Emacs.app'

# To be safe aliases

if [ -f ~/.bash_aliases ]; then
   . ~/.bash_aliases
fi

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias mkdir='mkdir -p'
alias h='history'
alias j='jobs -l'
alias r='rlogin'
alias which='type -all'
alias du='du -kh'
alias df='df -kTh'
alias lf="ls -l | grep -v ’^d’"
alias ldir="ls -l | grep ’^d’"

#my functions
function cd(){
	builtin cd "$*" && ls
}

function cdl(){
	builtin cd "cs50/labs/lab$*" && ls
}

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export TERM="xterm-color"
export PATH=$PATH:~/Library/Android/sdk/platform-tools

# --------------------------------------------------------------------
