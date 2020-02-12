noremap <buffer> <silent> <expr> <Leader>m (synIDattr(synID(line("."), col("."), 0), "name") =~
            \ 'comment\c') ?
            \ ':<S-Left>exe "<S-Right>normal! ^3x"<CR>' :
            \ ':<S-Left>exe "<S-Right>normal! I// \<lt>Esc>^"<CR>'

" autocmd BufReadPost *.java let b:commentCommand='I// '
" autocmd BufReadPost *.java let b:uncommentCommand='^3x'

" highlight javaOperator ctermfg=5
highlight javaClassdef ctermfg=9
highlight javaType ctermfg=6

nnoremap <buffer> <Leader>af :call OpenAssociatedJava(expand("%" . ":t"))<CR>
nnoremap <buffer> <Leader>b :wa \|make -d bin *.java<CR>

function! OpenAssociatedJava(filename)
    let s = split(a:filename, "[.]")
    if s[0][0] == "I"
        execute "vsplit " . strpart(s[0], 1, strlen(s[0]) - 1) . ".java"
        execute "wincmd x"
        execute "wincmd w"
    endif
    " if s[1] == "h"
        " execute "vsplit " . s[0] . ".cpp"
    " endif
endfunction

" call matchadd('javaType', '\<\w\{-\}\>\( \<\w\{-\}\> \?=[^=]\)\@=')

" call matchadd('javaType', '\<\w\{-\}\>\( \<\w\{-\}\>;\)\@=')

" call matchadd('javaType', '\<\w\{-\}\>\( \<\w\{-\}\>\s*(\)\@=')

