#-------------------------------------------------------
# PATH
export PATH=$PATH:$HOME/bin
export PATH=$PATH:$HOME/.local/bin/
export PATH=$PATH:$HOME/relma/bin/
if ! command -v ghg &>/dev/null; then
    export PATH="${PATH}:$(ghg bin)"
fi
export PATH=$PATH:$HOME/.deno/bin
export PATH=$PATH:/home/sheepla/.nodebrew/current/bin/
export PATH="${PATH}:${HOME}/node_modules/.bin"

# Go
#export PATH=$PATH:/usr/local/go/bin/ 
export GOPATH=$HOME/go 
export PATH=$PATH:$HOME/go/bin
#export GO111MODULE=auto

# grep
export GREP_COLOR="1;32"

# less
#export LESS='-R'
#export LESSOPEN='| $HOME/.local/bin/src-hilite-lesspipe.sh %s'

# editor
export EDITOR=nvim

# ddgr
#export BROWSER=w3m ddgr query
export DDGR_COLORS=dEfdxY

# tldr
export TLDR_HEADER='blue bold'
export TLDR_QUOTE='green'
export TLDR_DESCRIPTION='normal'
export TLDR_CODE='yellow'
export TLDR_PARAM='magenta'

# howdoi
#   https://github.com/gleitz/howdoi
HOWDOI_SEARCH_ENGINE=duckduckgo

# bat
export BAT_THEME="base16"

# exa
export EXA_COLORS=\
'ur=1;34:'\
'uw=1;36:'\
'ux=1;32:'\
'ue=1;;32:'\
'gr=1;37:'\
'gw=1;37:'\
'gx=1;37:'\
'tr=1;37:'\
'tw=1;37:'\
'tx=1;37:'\
'su=1;37:'\
'sf=1;37:'\
'xa=1;32:'\
'uu=1;34:'\
'un=37:'\
'gu=1;34:'\
'gn=37:'\
'da=37'

# fzf (iceberg theme)
export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS \
--color fg:#c6c8d1,hl:#84a0c6,fg+:#c6c8d1,bg+:#1e2132,hl+:#84a0c6 \
--color pointer:#84a0c6,border:#444b71,info:#e2a478,spinner:#89b8c2,header:#b4be82,prompt:#84a0c6,marker:#b4be82"

# enhancd
#ENHANCD_DOT_ARG="_"

export FZWIKI_LANG="ja"
