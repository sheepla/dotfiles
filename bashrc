#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Desable Ctrl-s, Ctrl-q
stty -ixon

shopt -s checkwinsize
shopt -s expand_aliases

#alias ls='ls --color=auto'
#PS1='[\e[32m\u@\h\e[m: \e[34m\w\e[m]\$ '

source ~/.aliases &>/dev/null

_set_gh_completion() {
    command -v gh &>/dev/null && eval "$(gh completion -s bash)"

}

# bash-completion
_set_completion() {
    local src
    src='/usr/share/bash-completion/bash_completion'
    [ -f "${src}" ] && source "${src}"
}
#
## enhancd
#_set_enhancd() {
#    local src
#    src="${HOME}/ghq/github.com/b4b4r07/enhancd/init.sh"
#    [ -f "${src}" ] && source "${src}"
#}

# zoxide
command -v zoxide &>/dev/null && eval "$(zoxide init bash)"

# fzf-tab-completion
#_set_fzf_tab_completion() {
#    local srcpath
#    srcpath=(
#        "${HOME}/ghq/github.com/lincheney/fzf-tab-completion/bash/fzf-bash-completion.sh"
#        "/usr/share/fzf-tab-completion/bash/fzf-bash-completion.sh"
#    )
#    for src in "${srcpath[@]}"; do
#        if [ -f "${src}" ]; then
#            source "${src}" && bind -x '"\C-i\C-i\C-i": fzf_bash_completion'
#        fi
#    done
#}

# fzf-extras
_set_fzf_completion() {
    local completion='/usr/share/fzf/completion.bash'
    [ -f "${completion}" ] && source "${completion}"
    local keybings='/usr/share/fzf/key-bindings.bash'
    [ -f "${keybings}" ] && source "${keybings}"
}

# prompt
_set_prompt() {
    command -v starship &>/dev/null && eval "$(starship init bash)"
}

_set_completion
_set_prompt
#_set_enhancd
_set_gh_completion
#_set_fzf_tab_completion
_set_fzf_completion
complete -C /home/sheepla/go/bin/gocomplete go
