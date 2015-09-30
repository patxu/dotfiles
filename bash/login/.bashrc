# $Id: .bashrc,v 1.1 1997/06/24 05:15:12 testuser Exp $

# FOR LOGIN SHELLS (SOURCED BY ~/.bash_profile)

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


####### Aliases

# compiler aliases
alias mygcc='gcc -Wall -pedantic -std=c99'

# file usage aliases
alias du='du -kh'
alias df='df -kTh'

# color aliases
if [ -x /usr/bin/dircolors ]; then
  test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
  alias ls='ls --color=auto'
  #alias dir='dir --color=auto'
  #alias vdir='vdir --color=auto'
  alias grep='grep --color=auto'
  alias fgrep='fgrep --color=auto'
  alias egrep='egrep --color=auto'
fi

# ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# aliases for safety
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias mkdir='mkdir -p'

# alias for ease of use
alias e='exit'

# git alias
alias gi='git init'
alias ga='git add'
alias gsa='git submodule add'
alias gp='git push'
alias gl='git log'
alias gs='git status'
alias gd='git diff'
alias gdc='git diff --cached'
alias gm='git commit -m'
alias gma='git commit -am'
alias gb='git branch'
alias gc='git checkout'
alias gra='git remote add'
alias grr='git remote rm'
alias gpu='git pull'
alias gcl='git clone'

####### Functions

function cd(){
	builtin cd "$*" && ls -A
}

function rpi() {
  [[ "${1}" == "ssh" ]] && ssh pi@192.168.1.121
  [[ "${1}" == "scp" ]] && scp ${2} pi@192.168.1.121:~/
}

# --------------------------------------------------------------------
