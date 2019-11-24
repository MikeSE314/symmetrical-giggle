noremap <silent> <expr> <Leader>m (synIDattr(synID(line("."), col("."), 0), "name") =~
            \ 'comment\c') ?
            \ ':<S-Left>exe "<S-Right>normal! ^2x"<CR>' :
            \ ':<S-Left>exe "<S-Right>normal! I% \<lt>Esc>^"<CR>'

setlocal spell

nnoremap <Leader>b :wa \|call MakeTex(expand("%" . ":t"))<CR>

function! MakeTex(filename)
    let pdfName = split(a:filename, "[.]")[0] . ".pdf"
    execute "!pdflatex -quiet -shell-escape " . a:filename . " && open " . pdfName
    " !pdflatex a:filename && open pdfName
endfunction
