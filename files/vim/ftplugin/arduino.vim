noremap <expr> <Leader>m (synIDattr(synID(line("."), col("."), 0), "name") =~
            \ 'comment\c') ?
            \ ':<S-Left>exe "<S-Right>normal! ^3x"<CR>' :
            \ ':<S-Left>exe "<S-Right>normal! I// \<lt>Esc>^"<CR>'

" autocmd BufReadPost *.ino let b:commentCommand='I// '
" autocmd BufReadPost *.ino let b:uncommentCommand='^3x'
