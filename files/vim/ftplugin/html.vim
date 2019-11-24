
noremap <expr> <Leader>m (synIDattr(synID(line("."), col("."), 0), "name") =~
            \ 'comment\c') ?
            \ ':<S-Left>exe "<S-Right>normal! ^4x$2h3x^"<CR>' :
            \ ':<S-Left>exe "<S-Right>normal! I<!--\<lt>Esc>A-->\<lt>Esc>^"<CR>'

"nnoremap <Leader>c :%s/\v_(.*)_/<LT>i>\1<LT>\/i>/g<CR>
            " \ :%s/\v\*\*(.*)\*\*/<LT>b>\1<LT>\/b>/g<CR>
            " \ :%s/\v^# (.*)$/<LT>h1>\1<LT>\/h1>/g<CR>

nnoremap <Leader>p I<LT>p><Esc>A<LT>/p><Esc>
vnoremap <Leader>p c<LT>p><LT>/p><Esc><Left><Left><Left>P

nnoremap <Leader>i I<LT>i><Esc>A<LT>/i><Esc>
vnoremap <Leader>i c<LT>i><LT>/i><Esc><Left><Left><Left>P

nnoremap <Leader>b I<LT>b><Esc>A<LT>/b><Esc>
vnoremap <Leader>b c<LT>b><LT>/b><Esc><Left><Left><Left>P

nnoremap <Leader>ib I<LT>i><LT>b><Esc>A<LT>/b><LT>/i><Esc>
vnoremap <Leader>ib c<LT>i><LT>b><LT>/b><LT>/i><Esc><Left><Left><Left><Left><Left><Left><Left>P

nnoremap <Leader>h1 I<LT>h1><Esc>A<LT>/h1><Esc>
vnoremap <Leader>h1 c<LT>h1><LT>/h1><Esc><Left><Left><Left>P

nnoremap <Leader>h2 I<LT>h2><Esc>A<LT>/h2><Esc>
vnoremap <Leader>h2 c<LT>h2><LT>/h2><Esc><Left><Left><Left>P

nnoremap <Leader>h3 I<LT>h3><Esc>A<LT>/h3><Esc>
vnoremap <Leader>h3 c<LT>h3><LT>/h3><Esc><Left><Left><Left>P

nnoremap <Leader>h4 I<LT>h4><Esc>A<LT>/h4><Esc>
vnoremap <Leader>h4 c<LT>h4><LT>/h4><Esc><Left><Left><Left>P

inoremap D&D D&amp;D

iabbrev Faerun Faerûn

nnoremap <Leader>hr o<LT>hr><Esc>

nnoremap <Return> o<Esc>

nnoremap <Leader>u F<df>f<df>
