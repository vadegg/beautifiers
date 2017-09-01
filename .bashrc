export TERM="xterm-256color"
export ECLIPSE_HOME="/Applications/Eclipse Java.app/Contents/Eclipse/"

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
# git fast commands aliased
alias gs='git status'
alias ga='git add'
alias gc='git commit -m'
alias gp='git push'
export PATH=$PATH:~/.scripts
