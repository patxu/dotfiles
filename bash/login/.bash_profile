# BEGIN: Block added by chef, to set environment strings
# Please see https://fburl.com/AndroidProvisioning if you do not use bash
# or if you would rather this bit of code 'live' somewhere else
. ~/.fbchef/environment
# END: Block added by chef

if [ -f /opt/facebook/hg/share/scm-prompt.sh ]; then
  source /opt/facebook/hg/share/scm-prompt.sh
fi

###### Sources
source ~/.bashrc
source ~/.git-prompt.sh

###### Custom Prompt
RED="\[$(tput setaf 1)\]"
CYAN="\[$(tput setaf 6)\]"
GREEN="\[$(tput setaf 2)\]"
RESET="\[$(tput sgr0)\]"
export PS1="$RED\W$GREEN\$(__git_ps1)$RED $ $RESET"

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export TERM="xterm-color"

# added by setup_fb4a.sh
export ANDROID_SDK=/opt/android_sdk
export ANDROID_NDK_REPOSITORY=/opt/android_ndk
export ANDROID_HOME=${ANDROID_SDK}
export PATH=${PATH}:${ANDROID_SDK}/tools:${ANDROID_SDK}/platform-tools

export FBANDROID_DIR=/Users/patxu/fbsource/fbandroid
alias quicklog_update=/Users/patxu/fbsource/fbandroid/scripts/quicklog/quicklog_update.sh
alias qlu=quicklog_update
