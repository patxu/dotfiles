echo "bashrc is being sourced, probably by mistake"
# .bashrc

source ~/.bashrc_common

# git alias
alias gi='git init'
alias ga='git add'
alias gp='git push'
alias gb='git branch'
# alias gl='git log --oneline --graph'
alias gl='git log --graph --pretty=git-log-format --abbrev-commit'
alias gs='git status'
alias gd='git diff'
alias gcm='git commit -m'
alias gca='git commit --amend --no-edit'

alias python=python3

# git flow
# source ~/code/workspace_settings/bash/git-flow-completion.bash
# if [ -f ~/.git-completion.bash ]; then
#    . ~/.git-completion.bash
# fi
