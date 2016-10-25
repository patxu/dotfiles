# $Id: .bash_profile,v 1.1 1997/06/24 05:15:12 testuser Exp $

# FOR LOGIN SHELLS (SOURCES ~/.bash_rc)

# This file is sourced by bash in every login shell.  After editing
# this file, type `source .bash_profile' in any shell which is already
# open and in which you want the changes to take effect.  For more
# info type `man bash'.

# The latest official version of this file is available in ~testuser
# with earlier versions available under RCS control.

# --------------------------------------------------------------------

# Source master file.  If you are a power user or control freak, you
# may want to copy it to this location, i.e.
#
#	cp /usr/local/lib/templates/master.bash_profile ~/.bash_profile
#
# If you do this, however, future changes to the master copy will not
# affect your account.  If you have only minor customizations to make,
# you can simply add code either before or after sourcing the master
# file.

###### Sources
source ~/.bashrc
source ~/.git-prompt.sh

###### Custom Prompt
RED="\[\e[0;31m\]"
CYAN="\[\e[0;36m\]"
GREEN="\[\e[0;32m\]"
export PS1="$RED\W$GREEN\$(__git_ps1)$RED $\e[m "

####### Proxies

#export HTTP_PROXY='http://gatekeeper.mitre.org:80'
#export HTTPS_PROXY='https://gatekeeper.mitre.org:80'
#export http_proxy='http://gatekeeper.mitre.org:80'
#export https_proxy='https://gatekeeper.mitre.org:80'


export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export TERM="xterm-color"
export PATH=$PATH:~/Library/Android/sdk/platform-tools

#maven path
export PATH=$PATH:~/.mvn/apache-maven-3.3.9/bin

#postgres
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin

# Setting PATH for Python 3.5
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}"
export PATH

##
# Your previous /Users/patxu/.bash_profile file was backed up as /Users/patxu/.bash_profile.macports-saved_2016-02-17_at_15:54:45
##

# MacPorts Installer addition on 2016-02-17_at_15:54:45: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

export JAVA_HOME=$(/usr/libexec/java_home)

## autojump
[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# rbenv
# eval "$(rbenv init -)"
