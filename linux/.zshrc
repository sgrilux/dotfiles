export PATH=/home/$(whoami)/bin:/usr/local/go/bin:/home/$(whoami)/go/bin:$PATH

source /home/$(whoami)/Source/zsh-autosuggestions/zsh-autosuggestions.zsh
source /home/$(whoami)/Source/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /home/$(whoami)/.oh-my-zsh/custom/themes/powerlevel9k/powerlevel9k.zsh-theme

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel9k/powerlevel9k"

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

plugins=(
    git
    aws
    gitignore
    themes
    terraform
    kubectl
    zsh-interactive-cd
)

source $ZSH/oh-my-zsh.sh

# Aliases
alias vim="nvim"
alias cds="cd ~/Source"

export PATH=/home/$(whoami)/.rbenv/versions/3.0.0/bin:/home/$(whoami)/.gem/ruby/3.0.0/bin:$PATH

export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
