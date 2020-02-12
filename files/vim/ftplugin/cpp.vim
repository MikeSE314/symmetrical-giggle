noremap <buffer> <silent> <expr> <Leader>m (synIDattr(synID(line("."), col("."), 0), "name") =~
            \ 'comment\c') ?
            \ ':<S-Left>exe "<S-Right>normal! ^3x"<CR>' :
            \ ':<S-Left>exe "<S-Right>normal! I// \<lt>Esc>^"<CR>'

nnoremap <buffer> <Leader>af :call OpenAssociated(expand("%" . ":t"))<CR>
inoremap <buffer> <Leader>flp for (unsigned int i = 0; i < ; i++) {<Left><Left><Left>
        \<Left><Left><Left><Left><Left>

function! OpenAssociated(filename)
    let s = split(a:filename, "[.]")
    if s[1] == "cpp"
        execute "vsplit " . s[0] . ".h"
        execute "wincmd x"
        execute "wincmd w"
        " do someting
    endif
    if s[1] == "h"
        execute "vsplit " . s[0] . ".cpp"
        " do something
    endif
endfunction

" autocmd BufReadPost *.cpp let b:commentCommand='I// '
" autocmd BufReadPost *.cpp let b:uncommentCommand='^3x'
" autocmd BufReadPost *.h let b:commentCommand='I// '
" autocmd BufReadPost *.h let b:uncommentCommand='^3x'
