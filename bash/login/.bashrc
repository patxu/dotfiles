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

# command line to use vim instead of emacs
set -o vi


####### Aliases
alias grep='grep --color=auto'

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
alias gm='git commit -m'
alias gma='git commit -am'
alias gpu='git pull'

alias mosh='mosh -6'

####### Functions

function cd(){
	builtin cd "$*" && ls -A
}

# git flow
# source ~/code/workspace_settings/bash/git-flow-completion.bash
if [ -f ~/.git-completion.bash ]; then
    . ~/.git-completion.bash
fi


# --------------------------------------------------------------------

# export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
# export PATH="$PATH:$HOME/.npm-packages/bin"
