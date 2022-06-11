# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=/Users/$(whoami)/bin:/opt/homebrew/bin:/Users/$(whoami)/go/bin:$PATH


export SDKROOT=$(xcrun --show-sdk-path)

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel9k/powerlevel9k"

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

plugins=(
    git
    macos
    aws
    gitignore
    themes
    terraform
    kubectl
    zsh-interactive-cd
    zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

# Aliases
alias vim="nvim"
alias cds="cd ~/Source"

source /Users/$(whoami)/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export PATH=/Users/$(whoami)/.rbenv/versions/3.0.0/bin:/Users/$(whoami)/.gem/ruby/3.0.0/bin:$PATH
source /opt/homebrew/opt/powerlevel9k/powerlevel9k.zsh-theme

export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
