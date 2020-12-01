# .bashrc

source ~/.bashrc_common

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
