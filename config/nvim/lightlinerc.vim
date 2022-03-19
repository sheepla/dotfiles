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
let g:lightline.separator = { 'left': "\ue0b0", 'right': "\ue0b2" }
let g:lightline.subseparator = { 'left': "\ue0b1", 'right': "\ue0b3" }

let g:lightline.active = {}
let g:lightline.active.left = [
    \ ['mode', 'paste'], 
    \ ['skkeleton', 'modified'],
    \ ['filename'],
    \ ]
let g:lightline.active.right = [
    \ ['gitbranch'],
    \ ['percent'],
    \ ['fileformat', 'fileencoding', 'filetype'],
    \ ]

let g:lightline.component = {}
let g:lightline.component_function = {}
let g:lightline.component_function.skkeleton = 'g:LightlineSkkeleton'
let g:lightline.component_function.gitbranch = 'g:GitCurrentBranch'

command! -bar LightlineUpdate
    \ call lightline#init()|
    \ call lightline#colorscheme()|
    \ call lightline#update()

function! g:LightlineSkkeleton() abort
    if get(g:, 'loaded_skkeleton') == 0
        return ''
    endif

    if lightline#mode() == 'INSERT' || lightline#mode() == 'COMMAND'
        if skkeleton#mode() == 'hira'
            return 'あ'
        elseif skkeleton#mode() == 'kata'
            return 'ア'
        else
            return 'Aa'
        endif
    else
        return ''
    endif
endfunction

function! g:GitCurrentBranch()
    if exists(':Gina') == 2
        return gina#component#repo#branch()
    else
        return ''
    endif
endfunction
