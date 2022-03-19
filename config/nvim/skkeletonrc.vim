
imap <silent> <C-l> <Plug>(skkeleton-toggle)
cmap <silent> <C-l> <Plug>(skkeleton-toggle)
autocmd User skkeleton-mode-changed redrawstatus

call skkeleton#config({
    \ 'eggLikeNewline': v:true,
    \ 'keepState': v:true,
    \ 'showCandidatesCount': 2
    \ })

 call skkeleton#register_kanatable('rom', {
    \ 'jj': 'escape',
    \ 'z\<Space>': ['\u3000', ''],
    \ 'z-': ['―', ''],
    \ '!':  ['！', ''],
    \ '&':  ['＆', ''],
    \ '(':  ['（', ''],
    \ ')':  ['）', ''],
    \ '*':  ['＊', ''], 
    \ 'z*': ['※', ''],
    \ '+':  ['＋', ''],
    \ '/':  ['／', ''], 
    \ 'z/': ['・', ''],
    \ '<':  ['＜', ''],
    \ '=':  ['＝', ''],
    \ '>':  ['＞', ''],
    \ '@':  ['＠', ''],
    \ '\\': ['＼', ''],
    \ '{':  ['｛', ''],
    \ '|':  ['｜', ''],
    \ '}':  ['｝', ''],
    \ '~':  ['〜', ''],
    \ })
