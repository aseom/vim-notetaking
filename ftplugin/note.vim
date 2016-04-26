" Syntax matchs ([ ], [!], [x], Header:, `Code`)
syntax match  Constant     /\[\s\].*$/
syntax match  Comment      /\[x\].*$/
syntax match  Type         /\[!\].*$/
syntax match  StorageClass /^.*:$/
syntax region String       start='`\+' end='`\+'

" <C-t> to add task, <C-d> to mark as done, <C-i> to mark as important
nnoremap <buffer> <C-t> o- [ ]<Space>
nnoremap <buffer> <silent> <C-d> :call FindReplace('\[.\]', '[x] [' . strftime("%Y-%m-%d") . ']')<CR>
nnoremap <buffer> <silent> <C-i> :call FindReplace('\[\s\]', '[!]')<CR>

function! FindReplace(from, to)
    call setline('.', substitute(getline('.'), a:from, a:to, ''))
endfunction
