" Plugin: vim-notetaking
" Author: ASeom Han <hm9599@gmail.com>

function! notetaking#mark_as_done()
    call s:find_replace('\[.\]', '[x] [' . strftime("%Y-%m-%d") . ']')
endfunction

function! notetaking#mark_as_important()
    call s:find_replace('\[\s\]', '[!]')
endfunction

function! s:find_replace(from, to)
    call setline('.', substitute(getline('.'), a:from, a:to, ''))
endfunction
