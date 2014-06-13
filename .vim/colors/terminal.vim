"originally stolen from Matt Wozniski via https://groups.google.com/forum/#!msg/vim_use/qxdfALpyjEw/qWBQImAwJGoJ
hi clear
if exists("syntax_on")
    syntax reset
endif

let g:colors_name = 'terminal'

" Change these to match your terminal!

let s:Black       = '#000000'
let s:DarkBlue    = '#9e1828'
let s:DarkGreen   = '#aece92'
let s:DarkCyan    = '#968a38'
let s:DarkRed     = '#414171'
let s:DarkMagenta = '#963c59'
let s:Brown       = '#418179'
let s:Grey        = '#bebebe'
let s:DarkGrey    = '#666666'
let s:Blue        = '#cf6171'
let s:Green       = '#c5f779'
let s:Cyan        = '#fff796'
let s:Red         = '#4186be'
let s:Magenta     = '#cf9ebe'
let s:Yellow      = '#71bebe'
let s:White       = '#6898ff'

" Both

exe 'hi ErrorMsg term=standout ctermbg=DarkRed guibg=' . s:DarkRed . ' ctermfg=White guifg=' . s:White
exe 'hi IncSearch term=reverse cterm=reverse gui=reverse'
exe 'hi ModeMsg term=bold cterm=bold gui=bold'
exe 'hi NonText term=bold ctermfg=Blue guifg=' . s:Blue
exe 'hi StatusLine term=reverse,bold cterm=reverse,bold gui=reverse,bold'
exe 'hi StatusLineNC term=reverse cterm=reverse gui=reverse'
exe 'hi VertSplit term=reverse cterm=reverse gui=reverse'
exe 'hi VisualNOS term=underline,bold cterm=underline,bold gui=underline,bold'
exe 'hi DiffText term=reverse cterm=bold gui=bold ctermbg=Red guibg=' . s:Red
exe 'hi PmenuThumb cterm=reverse gui=reverse'
exe 'hi PmenuSbar ctermbg=Grey guibg=' . s:Grey
exe 'hi TabLineSel term=bold cterm=bold gui=bold'
exe 'hi TabLineFill term=reverse cterm=reverse gui=reverse'
exe 'hi Cursor guibg=fg guifg=bg'
exe 'hi lCursor guibg=fg guifg=bg'

if &bg == 'light'
    exe 'hi Directory term=bold ctermfg=DarkBlue guifg=' . s:DarkBlue
    exe 'hi LineNr term=underline ctermfg=Brown guifg=' . s:Brown
    exe 'hi MoreMsg term=bold ctermfg=DarkGreen guifg=' . s:DarkGreen
    exe 'hi Question term=standout ctermfg=DarkGreen guifg=' . s:DarkGreen
    exe 'hi Search term=reverse ctermbg=Yellow guibg=' . s:Yellow . ' ctermfg=NONE guifg=NONE'
    exe 'hi SpellBad term=reverse ctermbg=Red guibg=' . s:Red
    exe 'hi SpellCap term=reverse ctermbg=Blue guibg=' . s:Blue
    exe 'hi SpellRare term=reverse ctermbg=Magenta guibg=' . s:Magenta
    exe 'hi SpellLocal term=underline ctermbg=Cyan guibg=' . s:Cyan
    exe 'hi Pmenu ctermbg=Magenta guibg=' . s:Magenta
    exe 'hi PmenuSel ctermbg=Grey guibg=' . s:Grey
    exe 'hi SpecialKey term=bold ctermfg=DarkBlue guifg=' . s:DarkBlue
    exe 'hi Title term=bold ctermfg=DarkMagenta guifg=' . s:DarkMagenta
    exe 'hi WarningMsg term=standout ctermfg=DarkRed guifg=' . s:DarkRed
    exe 'hi WildMenu term=standout ctermbg=Yellow guibg=' . s:Yellow . ' ctermfg=Black guifg=' . s:Black
    exe 'hi Folded term=standout ctermbg=Grey guibg=' . s:Grey . ' ctermfg=DarkBlue guifg=' . s:DarkBlue
    exe 'hi FoldColumn term=standout ctermbg=Grey guibg=' . s:Grey . ' ctermfg=DarkBlue guifg=' . s:DarkBlue
    exe 'hi SignColumn term=standout ctermbg=Grey guibg=' . s:Grey . ' ctermfg=DarkBlue guifg=' . s:DarkBlue
    exe 'hi Visual term=reverse'
    exe 'hi DiffAdd term=bold ctermbg=Blue guibg=' . s:Blue
    exe 'hi DiffChange term=bold ctermbg=Magenta guibg=' . s:Magenta
    exe 'hi DiffDelete term=bold ctermfg=Blue guifg=' . s:Blue . ' ctermbg=Cyan guibg=' . s:Cyan
    exe 'hi TabLine term=underline cterm=underline gui=underline ctermfg=Black guifg=' . s:Black . ' ctermbg=Grey guibg=' . s:Grey
    exe 'hi CursorColumn term=reverse ctermbg=Grey guibg=' . s:Grey
    exe 'hi CursorLine term=underline cterm=underline gui=underline'
    exe 'hi MatchParen term=reverse ctermbg=Cyan guibg=' . s:Cyan
    exe 'hi Normal gui=NONE'
else
    exe 'hi Directory term=bold ctermfg=Cyan guifg=' . s:Cyan
    exe 'hi LineNr term=underline ctermfg=Yellow guifg=' . s:Yellow
    exe 'hi MoreMsg term=bold ctermfg=Green guifg=' . s:Green
    exe 'hi Question term=standout ctermfg=Green guifg=' . s:Green
    exe 'hi Search term=reverse ctermbg=Yellow guibg=' . s:Yellow . ' ctermfg=Black guifg=' . s:Black
    exe 'hi SpecialKey term=bold ctermfg=Blue guifg=' . s:Blue
    exe 'hi SpellBad term=reverse ctermbg=Red guibg=' . s:Red
    exe 'hi SpellCap term=reverse ctermbg=Blue guibg=' . s:Blue
    exe 'hi SpellRare term=reverse ctermbg=Magenta guibg=' . s:Magenta
    exe 'hi SpellLocal term=underline ctermbg=Cyan guibg=' . s:Cyan
    exe 'hi Pmenu ctermbg=Magenta guibg=' . s:Magenta
    exe 'hi PmenuSel ctermbg=DarkGrey guibg=' . s:DarkGrey
    exe 'hi Title term=bold ctermfg=Magenta guifg=' . s:Magenta
    exe 'hi WarningMsg term=standout ctermfg=Red guifg=' . s:Red
    exe 'hi WildMenu term=standout ctermbg=Yellow guibg=' . s:Yellow . ' ctermfg=Black guifg=' . s:Black
    exe 'hi Folded term=standout ctermbg=DarkGrey guibg=' . s:DarkGrey . ' ctermfg=Cyan guifg=' . s:Cyan
    exe 'hi FoldColumn term=standout ctermbg=DarkGrey guibg=' . s:DarkGrey . ' ctermfg=Cyan guifg=' . s:Cyan
    exe 'hi SignColumn term=standout ctermbg=DarkGrey guibg=' . s:DarkGrey . ' ctermfg=Cyan guifg=' . s:Cyan
    exe 'hi Visual term=reverse'
    exe 'hi DiffAdd term=bold ctermbg=DarkBlue guibg=' . s:DarkBlue
    exe 'hi DiffChange term=bold ctermbg=DarkMagenta guibg=' . s:DarkMagenta
    exe 'hi DiffDelete term=bold ctermfg=Blue guifg=' . s:Blue . ' ctermbg=DarkCyan guibg=' . s:DarkCyan
    exe 'hi TabLine term=underline cterm=underline gui=underline ctermfg=White guifg=' . s:White . ' ctermbg=DarkGrey guibg=' . s:DarkGrey
    exe 'hi CursorColumn term=reverse ctermbg=DarkGrey guibg=' . s:DarkGrey
    exe 'hi CursorLine term=underline cterm=underline gui=underline'
    exe 'hi MatchParen term=reverse ctermbg=DarkCyan guibg=' . s:DarkCyan
    exe 'hi Normal gui=NONE'
endif
