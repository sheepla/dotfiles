" 
"     __  ___                               _    ___                        
"    /  |/  /_  __   ____  ___ _      __   | |  / (_)___ ___  __________    
"   / /|_/ / / / /  / __ \/ _ \ | /| / /   | | / / / __ `__ \/ ___/ ___/    
"  / /  / / /_/ /  / / / /  __/ |/ |/ /    | |/ / / / / / / / /  / /___ _ _ 
" /_/  /_/\__, /  /_/ /_/\___/|__/|__/     |___/_/_/ /_/ /_/_/   \___(_|_|_)
"        /____/                                                             
" 

" encoding 
set encoding=utf-8 
set termencoding=utf-8
"set fileencoding=utf-8

" file
set autoread
set autochdir
set hidden

" desable sound
set belloff=all

" indent
"set autoindent
set tabstop=4
set shiftwidth=4
set expandtab

" appearance
set cursorline
set noswapfile
set nobackup
set completeopt-=preview
set clipboard+=unnamed
set showtabline=2
set list
set listchars=tab:»-,trail:-,extends:»,precedes:«,nbsp:%
set scrolloff=5

" colorscheme
set t_Co=256
set termguicolors
set background=dark

" search
set wrapscan
set ignorecase
set smartcase
"set hlsearch
set incsearch

" command mode
set wildmenu

" backspace
set backspace=indent,eol,start

" line number
set number
"set relativenumber

" terminal
autocmd TermOpen * setlocal nonumber
tnoremap <silent> <Esc><Esc> <C-\><C-n>
tnoremap <silent> <C-;>  <C-\><C-n>

" help doc
set helplang=ja,en

" key bindings---------------------------------------------------------------{{{
"
" leader key
map <Space> <Leader>

" normal mode
nnoremap H ^
nnoremap L $

" not save no-name register with `x` command
nnoremap x "_x

" insert mode
inoremap jj <Esc>
inoremap <C-d> <Del>
inoremap <C-h> <BS>
inoremap <C-b> <Left>
inoremap <C-a> <Home>
inoremap <C-e> <End>
inoremap <C-f> <Right>
inoremap <C-b> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>

" visual mode
" vv -> visual select to line end
vnoremap v $h
vnoremap > >gv
vnoremap < <gv

" move buffer
nnoremap ss <Nop>
nnoremap sh <C-w>h
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
nnoremap sH <C-w>H
nnoremap sJ <C-w>J
nnoremap sK <C-w>K
nnoremap sL <C-w>L

" resize buffer
nnoremap <S-Up> 2<C-w>+
nnoremap <S-Down> 2<C-w>-
nnoremap <S-Left> 10<C-w><
nnoremap <S-Right> 10<C-w>>
nnoremap s+ 2<C-w>+
nnoremap s- 2<C-w>-
nnoremap s= <C-w>=
nnoremap s< 5<C-w><
nnoremap s> 5<C-w>>

" new buffer
nnoremap sn :<C-u>new<CR>
nnoremap sN :<C-u>vnew<CR>
nnoremap se :<C-w>edit<Space>
nnoremap sE :<C-u>tabedit<Space>

" split buffer
nnoremap sv :<C-u>vsplit<CR>
nnoremap sS :<C-u>split<CR>

" tab
nnoremap <silent> st :<C-u>tabnew<CR>
"nnoremap <C-Tab>   :<C-u>tabnext<CR>
"nnoremap <C-S-Tab> :<C-u>tabprevious<CR>
nnoremap <silent> s[ :<C-u>tabprevious<CR>
nnoremap <silent> s] :<C-u>tabnext<CR>
nnoremap <silent> s{ :<C-u>tabmove -<CR>
nnoremap <silent> s} :<C-u>tabmove +<CR>
nnoremap <silent> s0 :<C-u>tablast<CR>
nnoremap <silent> s1 :<C-u>tabnext 1<CR>
nnoremap <silent> s2 :<C-u>tabnext 2<CR>
nnoremap <silent> s3 :<C-u>tabnext 3<CR>
nnoremap <silent> s4 :<C-u>tabnext 4<CR>
nnoremap <silent> s5 :<C-u>tabnext 5<CR>
nnoremap <silent> s6 :<C-u>tabnext 6<CR>
nnoremap <silent> s7 :<C-u>tabnext 7<CR>
nnoremap <silent> s8 :<C-u>tabnext 8<CR>
nnoremap <silent> s9 :<C-u>tabnext 9<CR>

" commands
nnoremap <Leader>w :<C-u>write<CR>
nnoremap <Leader>; :
nnoremap s; <C-w>:
nnoremap s: <C-w>:

" quit / close
nnoremap <silent> sq :<C-u>quit<CR>
nnoremap <silent> sQ :<C-u>quit!<CR>
nnoremap <silent> sc :<C-u>close<CR>
nnoremap <silent> sC :<C-u>close!<CR>
nnoremap <silent> so :<C-u>only<CR>

" yank from / put from clipboard
nnoremap sy "+y
nnoremap sd "+d
nnoremap sp "+gp
nnoremap sP "+gP

" scroll
nnoremap <silent> J <C-e><C-e>
nnoremap <silent> <C-j> J
nnoremap <silent> K <C-y><C-y>
nnoremap <silent> <C-k> K
nnoremap <silent> <Down> <C-e><C-e>
nnoremap <silent> <Up> <C-y><C-y>

" toggle highlight search
nnoremap <silent> <Esc><Esc> :<C-u>set nohlsearch!<CR>

" terminal
nnoremap <silent> sT :<C-u>terminal<CR>
" }}}

if &compatible
  set nocompatible " Be iMproved
endif

" Required:
" Add the dein installation directory into runtimepath
set runtimepath+=$HOME/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
call dein#begin('$HOME/.cache/dein')

call dein#load_toml('$HOME/.config/nvim/dein.toml', {'lazy': 0})
call dein#load_toml('$HOME/.config/nvim/colors.toml', {'lazy': 0})
call dein#load_toml('$HOME/.config/nvim/lsp.toml', {'lazy': 0})
call dein#load_toml('$HOME/.config/nvim/joke.toml', {'lazy': 0})
"call dein#load_toml('$HOME/.config/dein/dein_lazy.toml', {'lazy': 1})

" Let dein manage dein
call dein#add('$HOME/.cache/dein/repos/github.com/Shougo/dein.vim')

if !has('nvim')
  call dein#add('roxma/nvim-yarp')
  call dein#add('roxma/vim-hug-neovim-rpc')
endif

" Add or remove your plugins here like this:
"call dein#add('Shougo/neosnippet.vim')
"call dein#add('Shougo/neosnippet-snippets')

" Required:
call dein#end()

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
"if dein#check_install()
" call dein#install()
"endif

