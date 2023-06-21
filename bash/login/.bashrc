# .bashrc

source $(brew --prefix)/opt/zsh-vi-mode/share/zsh-vi-mode/zsh-vi-mode.plugin.zsh

source ~/.bashrc_common

# git alias
alias gi='git init'
alias ga='git add'
alias gp='git push'
alias gb='git branch'
alias gl='git log --oneline --graph'
alias gs='git status'
alias gd='git diff'
alias gm='git commit -m'

alias python=python3

# git flow
# source ~/code/workspace_settings/bash/git-flow-completion.bash
if [ -f ~/.git-completion.bash ]; then
#    . ~/.git-completion.bash
fi
