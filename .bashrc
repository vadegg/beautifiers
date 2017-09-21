echo "Have a nice work!"

if [[ $(uname) == 'Darwin' ]]
then
    LS_COMMAND="gls"
else
    LS_COMMAND="ls"
fi

export TERM="xterm-256color"

[ "$TMUX" ] && export TERM=screen-256color

# custom colors
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
# custom styles
BOLD="\[$(tput bold)\]"
RESET="\[$(tput sgr0)\]"

PS1=\
" ${GRAY}[\A] \
${BLUE}\u@\h:\
${GREEN}\w\n\
${GRAY}${BOLD}$?\$ ${RESET}"
export PS1

export CLICOLOR=1
export LSCOLORS=exgxcxdxbxegedabagacaD
export LS_COLORS='di=34:ln=36:so=32:pi=33:ex=31:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;42:ow=30;1;43'

export PATH=$PATH:~/.scripts
export PATH=$PATH:/usr/local/pgsql/bin

alias cp="rsync --progress -avz"
alias ls="${LS_COMMAND} --color"
alias lsd="${LS_COMMAND} --color -h --group-directories-first"
alias lsa="${LS_COMMAND} -a --color"
alias lsda="lsd -a --color"
alias lsad="lsd -a"
rmt () {
    mv "$@" ~/.Trash/
}

# git fast commands aliased
alias gs='git status'
alias ga='git add .'
alias gc='git commit -m'
alias gp='git push'

gacp() {
    git add .
    git commit -m "$@"
    git push
}

# tmux frequent operations aliases
alias tl='tmux list-sessions'
alias ta='tmux attach-session -t'
alias tk='tmux kill-session -t'
alias tn='tmux new-session -d -s'

