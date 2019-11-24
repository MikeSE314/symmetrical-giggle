noremap <expr> <Leader>m (synIDattr(synID(line("."), col("."), 0), "name") =~
            \ 'comment\c') ?
            \ ':<S-Left>exe "<S-Right>normal! ^2x"<CR>' :
            \ ':<S-Left>exe "<S-Right>normal! I# \<lt>Esc>^"<CR>'

inoremap <Leader>ifnm if __name__ == "__main__":<CR>pass
inoremap <Leader>di def __init__(self):<CR>pass

nnoremap <Leader>b :wa \|call MakePython(expand("%" . ":t"))<CR>

function! MakePython(filename)
    execute "!python3 " . a:filename
endfunction

" autocmd BufReadPost *.py let b:commentCommand='I# '
" autocmd BufReadPost *.py let b:uncommentCommand='^2x'
