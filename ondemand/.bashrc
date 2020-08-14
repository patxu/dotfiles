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

# shopt -s histappend
# HISTCONTROL=ignoreboth:erasedups
# HISTIGNORE="?:??:clear:reset:history:exit*"
# HISTSIZE=100000
# HISTFILESIZE=100000
# PROMPT_COMMAND='\history -a; \history -c; \history -r;'
