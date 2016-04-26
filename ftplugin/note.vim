" Plugin: vim-notetaking
" Author: ASeom Han <hm9599@gmail.com>

" Syntax matchs ([ ], [!], [x], Header:, `Code`)
syntax match  Constant     /\[\s\].*$/
syntax match  Comment      /\[x\].*$/
syntax match  Type         /\[!\].*$/
syntax match  StorageClass /^.*:$/
syntax region String       start='`\+' end='`\+'

" <C-t> to add task, <C-d> to mark as done, <C-i> to mark as important
nnoremap <buffer> <C-t> o- [ ]<Space>
nnoremap <buffer> <silent> <C-d> :call notetaking#mark_as_done()<CR>
nnoremap <buffer> <silent> <C-i> :call notetaking#mark_as_important()<CR>
