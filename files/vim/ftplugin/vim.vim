noremap <buffer> <silent> <expr> <Leader>m (synIDattr(synID(line("."), col("."), 0), "name") =~
            \ 'comment\c') ?
            \ ':<S-Left>exe "<S-Right>normal! ^2x"<CR>' :
            \ ':<S-Left>exe "<S-Right>normal! I\" \<lt>Esc>^"<CR>'

" nnoremap <buffer> <Leader>m I" <ESC>
" nnoremap <buffer> <Leader>n ^2x

" vnoremap <buffer> <Leader>m :normal ,m<CR>
" vnoremap <buffer> <Leader>n :normal ,n<CR>

" autocmd BufReadPost .vimrc let b:commentCommand='I" '
" autocmd BufReadPost .vimrc let b:uncommentCommand='^2x'
