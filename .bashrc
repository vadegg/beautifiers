export TERM="xterm-256color"

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

[ "$TMUX" ] && export TERM=screen-256color

#colors
GREEN="\[$(tput setaf 22)\]"
RED="\[$(tput setaf 160)\]"
YELLOW="\[$(tput setaf 226)\]"
BLUE="\[$(tput setaf 27)\]"
VIOLET="\[$(tput setaf 129)\]"
LIGHT_BLUE="\[$(tput setaf 51)\]"
ORANGE="\[$(tput setaf 202)\]"
PINK="\[$(tput setaf 199)\]"
WHITE="\[$(tput setaf 255)\]"
GRAY="\[$(tput setaf 245)\]"
BLACK="\[$(tput setaf 0)\]"
#styles
BOLD="\[$(tput bold)\]"
RESET="\[$(tput sgr0)\]"

PS1=\
"${GRAY}[\A] \
${GREEN}\u${RESET}\
${GREEN}@${BLUE}\w\n\
${GRAY}${BOLD}$?\$ ${RESET}"

export PS1
alias cp="rsync --progress -avz"

export GOPATH=$HOME/workspace/go
export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:$GOROOT/bin
export GOBIN=$GOPATH/bin

alias lsd='gls --color -h --group-directories-first'
alias lsda='lsd -a'
# git fast commands aliased
alias gs='git status'
alias ga='git add .'
alias gc='git commit -m'
alias gp='git push'
alias tl='tmux list-sessions'
alias ta='tmux attach-session -t'
alias tk='tmux kill-session -t'
alias tn='tmux new-session -d -s'
alias lsa='ls -a'
export PATH=$PATH:~/.scripts
gacp() {
    ga
    gc "$@"
    gp
    }
