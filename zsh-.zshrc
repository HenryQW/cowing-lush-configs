export ZSH=/Users/Henry/.oh-my-zsh
ZSH_THEME="powerlevel9k/powerlevel9k"
DEFAULT_USER=Henry

ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"

plugins=(gitfast osx gulp zsh-autosuggestions zsh-syntax-highlighting zsh-wakatime docker docker-compose zsh-docker-aliases zsh-nvm zsh-better-npm-completion)
source $ZSH/oh-my-zsh.sh

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"

export GPG_TTY=$(tty)
export SSH_KEY_PATH="~/.ssh/id_kryptonite"

alias spa="ssh paris"
alias spi="ssh pi"
alias cat="bat"
alias ping="prettyping --nolegend"
alias brewski="brew update && brew upgrade && brew cleanup && brew prune; brew doctor"

git_add_commit_push() {
    git add -A
    git commit -m "$*"
    git push
}
alias gacp=git_add_commit_push

export redcup='cd /docker/Server-Configs && git reset --hard && git pull && dcpull && dcup -d && dkrmI'

export reapi='cd /docker/Server-Configs && git reset --hard && git pull && git submodule update --recursive --remote && dcup -d --build && dkrmI'
