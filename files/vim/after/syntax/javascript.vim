syntax match javaScriptMethod "\.\@<=\<\w\+\>(\@="
syntax match javaScriptFunction "\.\@<!\<\w\+\>(\@="
hi javaScriptMethod ctermfg=red
hi javaScriptFunction ctermfg=blue
