[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
alias ls='ls -GFh'

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

if [ -f ~/.tmux-completion.bash ]; then
  . ~/.tmux-completion.bash
fi

alias vim="/usr/local/bin/vim"

. ~/.bashrc
