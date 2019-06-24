# .bashrc
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

# User specific aliases and functions for all shells

cdls(){
  builtin cd "$@" && ls -A
}

myarcunit(){
  ./flib/intern/scripts/inclusivity/arc_unit_mentorship.sh
}

up(){
  # no args
  if [ $# -eq 0 ]; then
    hg amend --rebase && jf s -n && hg ssl

  # args
  else
    hg amend --rebase && jf s "$@" && hg ssl
  fi
}

get(){
  jf get "$@" | grep 'hg rebase.*' -o | pbcopy; echo "Rebase command copied to clipboard: `pbpaste`"
}

# aliases for safety
alias rm='rm -i'
alias cp='cp --backup=numbered'
alias ln='ln --backup=numbered'
alias mv='mv -f --backup=numbered'
alias mkdir='mkdir -p'

# aliases
alias pra='arc pull && hg rebaseall && hg ssl'


shopt -s histappend
HISTCONTROL=ignoreboth:erasedups
HISTIGNORE="?:??:clear:reset:history:exit*"
HISTSIZE=100000
HISTFILESIZE=100000
PROMPT_COMMAND='history -a; history -c; history -r;'

