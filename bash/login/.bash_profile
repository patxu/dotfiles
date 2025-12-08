echo "bash_profile is being sourced, probably by mistake"
# Sources
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
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"
