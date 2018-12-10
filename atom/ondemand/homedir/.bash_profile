# .bash_profile

if [ -f /usr/share/scm/scm-prompt.sh ]; then
  source /usr/share/scm/scm-prompt.sh
fi

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
  source ~/.bashrc
fi

# User specific environment and startup programs

# export EDITOR=vim
export PATH=$PATH:$HOME/bin

shopt -s checkwinsize

set -o vi

RED="\[$(tput setaf 1)\]"
CYAN="\[$(tput setaf 6)\]"
GREEN="\[$(tput setaf 2)\]"
BLUE="\[\033[0;34m\]"
RESET="\[$(tput sgr0)\]"

export PS1="$RED\w$BLUE\$(_scm_prompt ' (%s)')$RED \$ $RESET"

unset USERNAME
