noremap <buffer> <silent> <expr> <Leader>m (synIDattr(synID(line("."), col("."), 0), "name") =~
            \ 'comment\c') ?
            \ ':<S-Left>exe "<S-Right>normal! ^4x$2h3x^"<CR>' :
            \ ':<S-Left>exe "<S-Right>normal! I<!--\<lt>Esc>A-->\<lt>Esc>^"<CR>'

setlocal spell
set sw=2

" noremap <buffer> <buffer> <Leader>m I<!--<ESC>A--><ESC>
" noremap <buffer> <buffer> <Leader>n ^4x$2h3x
