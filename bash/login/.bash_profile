if [ -f /opt/facebook/hg/share/scm-prompt.sh ]; then
  source /opt/facebook/hg/share/scm-prompt.sh
fi

###### Sources
source ~/.bashrc
source ~/.git-prompt.sh

# Use mercurial bash-completion
if [ -f /etc/bash_completion.d/mercurial.sh ]; then
  source /etc/bash_completion.d/mercurial.sh
fi

# Use buck bash-completion
if [ -f /etc/bash_completion.d/buck-fbsource.bash ]; then
  source /etc/bash_completion.d/buck-fbsource.bash
fi

###### Custom Prompt
RED="\[$(tput setaf 1)\]"
CYAN="\[$(tput setaf 6)\]"
GREEN="\[$(tput setaf 2)\]"
RESET="\[$(tput sgr0)\]"
export PS1="$RED\W$GREEN\$(__git_ps1)$RED $ $RESET"

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export TERM="xterm-color"
