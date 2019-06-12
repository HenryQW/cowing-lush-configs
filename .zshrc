export ZSH=/Users/Henry/.oh-my-zsh

ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
DISABLE_UPDATE_PROMPT="true"

# export NVM_LAZY_LOAD=true

source <(antibody init)
antibody bundle <~/.antibody.txt

# bind keys for zsh-users/zsh-history-substring-search
bindkey '\eOA' history-substring-search-up
bindkey '\eOB' history-substring-search-down

export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
export PATH="$(brew --prefix qt5)/bin:$PATH"

# for kr
export GPG_TTY=$(tty)
# export SSH_KEY_PATH="~/.ssh/id_kryptonite"

# ssh connection
alias spa="ssh paris"
alias spi="ssh pi"

# better life
alias top="htop"
alias cat="bat"
alias ping="prettyping --nolegend"

# brew on the fly
alias brewski="brew update && brew upgrade && brew cleanup && brew cask upgrade"

git_add_commit_push() {
    git add -A
    git commit -m "$*"
    git push
}

alias gacp=git_add_commit_push
