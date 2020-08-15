# Created by newuser for 5.7.1

# zsh config
autoload -Uz compinit promptinit
compinit
promptinit
setopt COMPLETE_ALIASES

# backspace through anything
bindkey -v '^?' backward-delete-char

# reverse search
bindkey -v
bindkey '^R' history-incremental-search-backward

# This will set the default prompt to the walters theme
#export PS1='%n %m %c '
export PROMPT=$'\n''%F{green}%c%f'$'\n''%F{magenta}%n%f '

# colored prompt and folders/files
alias ls="ls -h --color=always"
#export PS1='\[\033[01;35m\]\u@\h \[\033[01;33m\]\W \$ \[\033[00m\]'


## PATH EXPORTS

# personal scripts
export PATH=$PATH:$HOME/.scripts

# pip user modules
export PATH=$PATH:$HOME/.local/bin


## ALIASES

# general
alias lah="ls -lah"
alias cl="clear"
alias vimzrc="vim ~/.zshrc"
alias szrc="source ~/.zshrc"
alias vimrc="vim ~/.vimrc"

# processes and sytem monitoring
alias tree="pstree -p"
alias murder="killall -9"
alias space="df -h"

# pacman
alias pacup='sudo pacman -Syu'
alias pacin='sudo pacman -S'
alias pacrm='sudo pacman -R'
alias pacls='grep -i installed /var/log/pacman.log'
# cleans up orhpaned packages
alias paccl='sudo pacman -Rns $(pacman -Qtdq)'
# does not work for some reason
#alias pacspace="pacman -Qi | awk '/^Name/{name=$3} /^Installed Size/{print $4$5, name}' | sort -hr | less"

# system tools
# check if system is 32 or 64 bit
alias 32or64='uname -a'

# modify the cursor delay/repetition speed via xset
alias faast='xset r rate 250 45'

# check keybindings in shell
alias bk='bindkey'

# Git
alias gitname='git config user.name'
alias gitemail='git config user.email'
alias gitls='git ls-tree --name-only -r'
alias adog='git log --all --decorate --oneline --graph'
alias gsta='git status'
alias gadd='git add'

# stupid git
alias got="git"
alias gut="git"
alias kermit="git commit"
alias all="git add -A"
alias ship="git push origin"
alias shup="git pull origin"
alias shipto="git push"
alias switch="git checkout"
alias squash="git rebase -i"

# makepkg
alias mkpkg="makepkg -sic"
alias mkpkgf="makepkg -sif"

# curl, to prevent zsh globbing on '?'
alias curl='noglob curl'
alias curlp='curl -H "Content-Type: application/json" \
    --data'


# various util
alias weather='curl wttr.in/'
alias colortest='msgcat --color=test'

# map vim to nvim
#alias vim="nvim"

# functions

function cd_up() {
    cd $(printf "%0.0s../" $(seq 1 $1));
  }
alias 'up'='cd_up'

# fuzzy search
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
