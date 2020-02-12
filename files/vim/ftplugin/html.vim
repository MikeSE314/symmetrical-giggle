noremap <buffer> <silent> <expr> <Leader>m (synIDattr(synID(line("."), col("."), 0), "name") =~
            \ 'comment\c') ?
            \ ':<S-Left>exe "<S-Right>normal! ^4x$2h3x^"<CR>' :
            \ ':<S-Left>exe "<S-Right>normal! I<!--\<lt>Esc>A-->\<lt>Esc>^"<CR>'

"nnoremap <Leader>c :%s/\v_(.*)_/<LT>i>\1<LT>\/i>/g<CR>
            " \ :%s/\v\*\*(.*)\*\*/<LT>b>\1<LT>\/b>/g<CR>
            " \ :%s/\v^# (.*)$/<LT>h1>\1<LT>\/h1>/g<CR>

nnoremap <buffer> <Leader>p I<LT>p><Esc>A<LT>/p><Esc>
vnoremap <buffer> <Leader>p c<LT>p>"<LT>/p><Esc>

nnoremap <buffer> <Leader>i I<LT>i><Esc>A<LT>/i><Esc>
vnoremap <buffer> <Leader>i c<LT>i>"<LT>/i><Esc>

nnoremap <buffer> <Leader>b I<LT>b><Esc>A<LT>/b><Esc>
vnoremap <buffer> <Leader>b c<LT>b>"<LT>/b><Esc>

nnoremap <buffer> <Leader>ib I<LT>i><LT>b><Esc>A<LT>/b><LT>/i><Esc>
vnoremap <buffer> <Leader>ib c<LT>i><LT>b>"<LT>/b><LT>/i><Esc>

nnoremap <buffer> <Leader>h1 I<LT>h1><Esc>A<LT>/h1><Esc>
vnoremap <buffer> <Leader>h1 c<LT>h1>"<LT>/h1><Esc>

nnoremap <buffer> <Leader>h2 I<LT>h2><Esc>A<LT>/h2><Esc>
vnoremap <buffer> <Leader>h2 c<LT>h2><LT>/h2><Esc>

nnoremap <buffer> <Leader>h3 I<LT>h3><Esc>A<LT>/h3><Esc>
vnoremap <buffer> <Leader>h3 c<LT>h3><LT>/h3><Esc>

nnoremap <buffer> <Leader>h4 I<LT>h4><Esc>A<LT>/h4><Esc>
vnoremap <buffer> <Leader>h4 c<LT>h4><LT>/h4><Esc>

nnoremap <buffer> <Return> o<Esc>

nnoremap <buffer> <Leader>u F<df>f<df>

