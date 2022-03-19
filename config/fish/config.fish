#!/usr/bin/env fish

# 起動時のメッセージを無効に
set fish_greeting

# プロンプトを設定
if command -v starship &>/dev/null
    eval (starship init fish)
end

if command -v exa &>/dev/null
    alias ls 'exa --classify --icons'
    alias l  'exa -all --classify --icons'
    alias ll 'exa -all --long --classify --icons'
    alias lt 'exa -all --tree --classify --icons'
end

if command -v bat &>/dev/null
    alias cat 'bat'
end

alias cls clear
alias c clear

if command -v ranger &>/dev/null
    alias r 'ranger'
end

# fzf (jethrokuan/fzf)
set -U FZF_LEGACY_KEYBINDINGS 0
# set -U FZF_REVERSE_ISEARCH_OPTS "--reverse --height=100%"
set -U FZF_REVERSE_ISEARCH_OPTS "--reverse --height=50%"

# zoxide
if command -v zoxide &>/dev/null
    zoxide init fish | source
end
