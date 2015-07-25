# $Id: .bash_profile,v 1.1 1997/06/24 05:15:12 testuser Exp $

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

export PS1='\[\e[0;31m\]\@ \W $\[\e[m\] '

#export HTTP_PROXY='http://gatekeeper.mitre.org:80'
#export HTTPS_PROXY='https://gatekeeper.mitre.org:80'
#export http_proxy='http://gatekeeper.mitre.org:80'
#export https_proxy='https://gatekeeper.mitre.org:80'

source .bashrc

# --------------------------------------------------------------------
