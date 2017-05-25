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

# command line vim
set -o vi


####### Aliases

# compiler aliases
alias mygcc='gcc -Wall -pedantic -std=c99'

# file usage aliases
alias du='du -kh'
alias df='df -kTh'

alias grep='grep --color=auto'

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
alias gb='git branch'
alias gl='git log --oneline --graph'
alias gs='git status'
alias gd='git diff'
alias gdc='git diff --cached'
alias gm='git commit -m'
alias gma='git commit -am'
alias gpu='git pull'
alias gcl='git clone'

####### Functions

function cd(){
	builtin cd "$*" && ls -A
}

# usage: after sourcing this bash file, just type in terminal <name> and your terminal name will update
#https://askubuntu.com/questions/636944/how-to-change-the-title-of-the-current-terminal-tab-using-only-the-command-line
function title(){
  echo -ne "\033]0;$1\a"
}

function g-(){
	ga . && gm "$*" && gp
}

function rpi() {
  [[ "${1}" == "ssh" ]] && ssh pi@192.168.1.121
  [[ "${1}" == "scp" ]] && scp ${2} pi@192.168.1.121:~/
}

if [ -f ~/.git-completion.bash ]; then
    . ~/.git-completion.bash
fi

# thefuck tool
eval $(thefuck --alias)

# git flow
# source ~/code/workspace_settings/bash/git-flow-completion.bash

# --------------------------------------------------------------------

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export PATH="$PATH:$HOME/.npm-packages/bin"
