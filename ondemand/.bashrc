# .bashrc

# command line to use vim instead of emacs
set -o vi
export EDITOR=vim

# alias for ease of use
alias e='exit'

####### Aliases
# aliases for safety
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias mkdir='mkdir -p'

####### Functions
# function cd(){
	# builtin cd "$*" && ls -A
# }

## Mercurial
get(){
  jf get --rebase "$@"
}

up(){
  # no args
  if [ $# -eq 0 ]; then
    hg amend --rebase && jf s -n

  # args
  else
    hg amend --rebase && jf s "$@"
  fi
}

# Unlike earlier versions, Bash4 sources your bashrc on non-interactive shells.
# The line below prevents anything in this file from creating output that will
# break utilities that use ssh as a pipe, including git and mercurial.
[ -z "$PS1" ] && return

# Source global definitions
if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi

# Source Facebook definitions
if [ -f /usr/facebook/ops/rc/master.bashrc ]; then
  . /usr/facebook/ops/rc/master.bashrc
fi

if [ -f /usr/share/scm/scm-prompt.sh ]; then
  source /usr/share/scm/scm-prompt.sh
fi

export PATH=$PATH:$HOME/bin

###### Custom Prompt
shopt -s checkwinsize

RED="\[$(tput setaf 1)\]"
CYAN="\[$(tput setaf 6)\]"
GREEN="\[$(tput setaf 2)\]"
BLUE="\[\033[0;34m\]"
RESET="\[$(tput sgr0)\]"

export PS1="$RED\w$BLUE\$(_scm_prompt ' (%s)')$RED \$ $RESET"

unset USERNAME
