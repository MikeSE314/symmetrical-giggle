
" ============================================
" Highlights
" ============================================

set background=dark
let colors_name="myscheme"

function!  CtermFor(group, ...)
    let histring = 'hi ' . a:group . ' '

    if strlen(a:1)
        let histring .= 'ctermbg=' . a:1 . ' '
    endif

    if strlen(a:2)
        let histring .= 'ctermfg=' . a:2 . ' '
    endif

    if a:0 >= 3 && strlen(a:3)
        let histring .= 'cterm=' . a:3 . ' '
    endif

    execute histring
endfunction

hi clear

" hi Normal         ctermbg=black    ctermfg=white       cterm=NONE
exe CtermFor("Normal", "black", "white", "NONE")

hi ColorColumn ctermbg=232 cterm=NONE

exe CtermFor("NonText", "bg", "darkgray", "NONE")
exe CtermFor("Comment", "bg", "8", "NONE")
exe CtermFor("Constant", "bg", "darkmagenta", "NONE")
exe CtermFor("Character", "bg", "darkmagenta", "NONE")
exe CtermFor("Error", "darkgray", "darkred", "NONE")
exe CtermFor("Identifier", "bg", "cyan", "NONE")
" exe CtermFor("Function", "bg", "darkgreen", "NONE")
exe CtermFor("Ignore", "bg", "magenta", "NONE")
exe CtermFor("PreProc", "bg", "magenta", "NONE")
exe CtermFor("Include", "bg", "darkblue", "NONE")
exe CtermFor("Define", "bg", "darkred", "NONE")
exe CtermFor("Macro", "bg", "magenta", "NONE")
exe CtermFor("PreCondit", "bg", "magenta", "bold")
exe CtermFor("Special", "bg", "cyan", "NONE")
exe CtermFor("SpecialChar", "bg", "cyan", "NONE")
exe CtermFor("Tag", "bg", "red", "bold")
exe CtermFor("Delimiter", "bg", "cyan", "NONE")
exe CtermFor("SpecialComment", "bg", "cyan", "NONE")
exe CtermFor("Debug", "bg", "red", "NONE")
exe CtermFor("Statement", "bg", "red", "NONE")
exe CtermFor("Conditional", "bg", "darkblue", "NONE")
exe CtermFor("Repeat", "bg", "darkblue", "NONE")
exe CtermFor("Label", "bg", "darkblue", "NONE")
exe CtermFor("Operator", "bg", "red", "NONE")
exe CtermFor("Exception", "bg", "cyan", "NONE")
exe CtermFor("Keyword", "bg", "darkgreen", "NONE")
exe CtermFor("String", "bg", "green", "NONE")
exe CtermFor("Number", "bg", "darkmagenta", "NONE")
exe CtermFor("Float", "bg", "darkmagenta", "NONE")
exe CtermFor("Boolean", "bg", "blue", "NONE")
exe CtermFor("Todo", "bg", "darkgreen", "bold")
exe CtermFor("Type", "bg", "yellow", "NONE")
exe CtermFor("StorageClass", "bg", "darkmagenta", "NONE")
exe CtermFor("Structure", "bg", "green", "NONE")
exe CtermFor("Typedef", "bg", "green", "NONE")
exe CtermFor("Underlined", "bg", "green", "underline")
exe CtermFor("StatusLine", "darkgray", "white", "NONE")
exe CtermFor("StatusLineNC", "bg", "darkgray", "NONE")
exe CtermFor("VertSplit", "darkgray", "darkgray", "NONE")
exe CtermFor("TabLine", "bg", "darkgray", "NONE")
exe CtermFor("TabLineFill", "bg", "darkgray", "NONE")
exe CtermFor("TabLineSel", "bg", "darkgreen", "bold")
exe CtermFor("Title", "bg", "white", "NONE")
exe CtermFor("CursorLine", "darkgray", "NONE", "NONE")
exe CtermFor("LineNr", "bg", "darkgray", "NONE")
exe CtermFor("CursorLineNr", "bg", "darkgreen", "bold")
exe CtermFor("helpLeadBlank", "bg", "NONE", "NONE")
exe CtermFor("helpNormal", "bg", "white", "NONE")
exe CtermFor("Visual", "darkgray", "NONE", "NONE")
exe CtermFor("VisualNOS", "black", "darkgray", "bold")
exe CtermFor("Pmenu", "darkgray", "cyan", "NONE")
exe CtermFor("PmenuSbar", "darkgray", "black", "NONE")
exe CtermFor("PmenuSel", "cyan", "black", "NONE")
exe CtermFor("PmenuThumb", "green", "black", "NONE")
exe CtermFor("FoldColumn", "bg", "cyan", "NONE")
exe CtermFor("Folded", "bg", "cyan", "NONE")
exe CtermFor("WildMenu", "darkgray", "cyan", "underline")
exe CtermFor("SpecialKey", "darkgray", "darkgreen", "NONE")
exe CtermFor("DiffAdd", "green", "black", "bold")
exe CtermFor("DiffChange", "green", "black", "NONE")
exe CtermFor("DiffDelete", "magenta", "darkgray", "bold")
exe CtermFor("DiffText", "red", "black", "bold")
exe CtermFor("IncSearch", "gray", "black", "bold")
exe CtermFor("Search", "blue", "black", "NONE")
exe CtermFor("Directory", "bg", "cyan", "bold")
exe CtermFor("MatchParen", "bg", "red", "bold")
exe CtermFor("SpellBad", "bg", "NONE", "undercurl")
exe CtermFor("SpellCap", "bg", "NONE", "undercurl")
exe CtermFor("SpellLocal", "bg", "NONE", "undercurl")
exe CtermFor("SpellRare", "bg", "NONE", "undercurl")
exe CtermFor("signColumn", "bg", "cyan", "NONE")
exe CtermFor("ErrorMsg", "bg", "darkred", "bold")
exe CtermFor("ModeMsg", "bg", "darkgreen", "NONE")
exe CtermFor("MoreMsg", "bg", "cyan", "bold")
exe CtermFor("Question", "bg", "white", "bold")
exe CtermFor("WarningMsg", "bg", "darkgreen", "NONE")
exe CtermFor("Cursor", "cyan", "black", "bold")
exe CtermFor("CursorColumn", "darkgray", "white", "NONE")
