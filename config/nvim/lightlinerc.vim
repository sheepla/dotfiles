set laststatus=2
set noshowmode

let g:lightline = {}

" PowerLine chars...
"  \ue0b0
"  \ue0b1
"  \ue0b2
"  \ue0b3
"  \ue0b8
"  \ue0b9
"  \ue0ba
"  \ue0bb
"  \ue0bc 
"  \ue0bd
"  \ue0be 
"  \ue0bf
let g:lightline.separator = { 'left': "\ue0b8", 'right': "\ue0ba" }
let g:lightline.subseparator = { 'left': "\ue0b9", 'right': "\ue0bb" }

let g:lightline.active = {}

let g:lightline.active.left = [
    \ ['mode', 'paste'], 
    \ ['skkeleton', 'modified'],
    \ ['readoly', 'filename'],
    \ ]

let g:lightline.active.right = [
    \ ['lsp_errors', 'lsp_warnings'],
    \ ['percent'],
    \ ['git_status'],
    \ ['fileformat', 'fileencoding', 'filetype'],
    \ ]

let g:lightline.component_expand = {
    \ 'lsp_warnings': 'lightline_lsp#warnings',
    \ 'lsp_errors':   'lightline_lsp#errors',
    \ }

let g:lightline.component_type =  {
    \ 'lsp_warnings': 'warning',
    \ 'lsp_errors':   'error',
    \ 'lsp_ok':       'middle',
    \ }

let g:lightline.component_function = {}
let g:lightline.component_function.skkeleton = 'g:lightline_skk#mode'
let g:lightline.component_function.git_status = 'g:lightline#hunks#composer'

command! -bar LightlineUpdate
    \ call lightline#init()|
    \ call lightline#colorscheme()|
    \ call lightline#update()

"call lightline_skk#option('display', {
"    \ 'hiragana': 'あ',
"    \ 'katakana': 'ア',
"    \ 'hankaku-katakana': 'ｱｧ',
"    \ 'zenkaku-alphabet': 'Ａ',
"    \ 'alphabet': 'Aa',
"    \ })
