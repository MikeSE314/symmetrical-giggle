noremap <buffer> <silent> <expr> <Leader>m (synIDattr(synID(line("."), col("."), 0), "name") =~
            \ 'comment\c') ?
            \ ':<S-Left>exe "<S-Right>normal! ^4x$2h3x^"<CR>' :
            \ ':<S-Left>exe "<S-Right>normal! I<!--\<lt>Esc>A-->\<lt>Esc>^"<CR>'

" noremap <Leader>m :call execute('normal! ^') <bar> call execute((synIDattr(synID(line('.'), col('.'), 0), 'name') =~ 'comment\c' ? 'normal! ^4x$2h3x' : 'normal! I<!--\<lt>Esc>A-->') . '"')<CR>

" noremap <Leader>m :call ToggleComment()<CR>

" map <expr> <Leader>u MoveToBeginning()
" map <Leader>u :call MoveToBeginning()<CR>
" map <Leader>u :call ToggleComment()<CR>

function! MoveToBeginning()
    " let curpos = getcurpos()
    " let target = search(
    call cursor(0, 1)
    call search('\S', "c")
endfunction

" function! ToggleComment()
    " call MoveToBeginning()
    " let st = synIDattr(synID(line("."), col("."), 0), "name")
    " let st1 = '^4x$2h3x'
    " let st2 = 'I<!--'
    " let st3 = 'A-->'
    " let st4 = 'I!'
    " if st =~ 'comment\c'
        " execute "normal! " . st1
    " else
        " execute "normal! " . st2
        " execute "normal! " . st3
    " endif
    " " (st =~ 'comment\c') ? echo "have" : echo "not have"
    " " ':<S-Left>exe "<S-Right>normal! ' . ((synIDattr(synID(line("."), col("."), 0), "name") =~ 'comment\c') ? '^4x$2h3x' : 'I<!--\<lt>Esc>A-->') . '"<CR>'
    " " ':<S-Left>exe "<S-Right>normal! ^4x$2h3x"<CR>' :
    " " ':<S-Left>exe "<S-Right>normal! I<!--\<lt>Esc>A-->"<CR>'
" endfunction

