#
# Bash completion for tm
#

# tm completion: include both session available and session running
_tm_complete ()
{
    local IFS='
';
    local cur="${COMP_WORDS[COMP_CWORD]}"
    local options="$(tmux -q list-sessions 2>/dev/null | cut -f 1 -d ':') $(tmux ls)"
    COMPREPLY=( $(compgen -W "${options}" -- ${cur}))
}

complete -F _tm_complete ta
complete -F _tm_complete tk
