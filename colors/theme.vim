" Name: theme.vim
" Version: 1.1
" Description: Theme based on a nice theme I found with minor changes.
"
" Based on
" https://github.com/andreypopp/vim-colors-plain
"
" which in turn based on
" https://github.com/pbrisbin/vim-colors-off (MIT License)
"
" which in turn based on
" https://github.com/reedes/vim-colors-pencil (MIT License)
"
"
"""
hi clear

if exists('syntax on')
 syntax reset
endif

let g:colors_name='theme'

" https://github.com/noahfrederick/vim-hemisu/
function! s:h(group, style)
	execute "highlight!" a:group
		\ "ctermfg=" (has_key(a:style, "fg") ? a:style.fg.cterm : "NONE")
		\ "ctermbg=" (has_key(a:style, "bg") ? a:style.bg.cterm : "NONE")
		\ "cterm=" (has_key(a:style, "cterm") ? a:style.cterm : "NONE")
		\ "guisp=" (has_key(a:style, "guisp") ? a:style.guisp : "NONE")
		\ "guifg=NONE"
		\ "guibg=NONE"
		\ "gui=NONE"
endfunction

let s:none = {"cterm": "NONE"}
let s:dark_black = {"cterm": "0"}
let s:black = {"cterm": "8"}
let s:dark_red = {"cterm": "1"}
let s:red = {"cterm": "9"}
let s:dark_green = {"cterm": "2"}
let s:green = {"cterm": "10"}
let s:dark_yellow = {"cterm": "3"}
let s:yellow = {"cterm": "11"}
let s:dark_blue = {"cterm": "4"}
let s:blue = {"cterm": "12"}
let s:dark_magenta = {"cterm": "5"}
let s:magenta = {"cterm": "13"}
let s:dark_cyan = {"cterm": "6"}
let s:cyan = {"cterm": "14"}
let s:dark_white = {"cterm": "7"}
let s:white = {"cterm": "15"}


"__UI__
hi! link ColorColumn Cursorline
"Conceal
hi! link Cursor Normal
"lCursor
"CursorIM
hi! link CursorColumn Cursorline
call s:h("Cursorline", {"fg": s:white, "bg": s:black})
"Directory
call s:h("DiffAdd",	{"fg": s:dark_green, "bg": s:none})
call s:h("DiffChange",	{"fg": s:dark_blue, "bg": s:none})
call s:h("DiffDelete",	{"fg": s:dark_red, "bg": s:none})
call s:h("DiffText",	{"fg": s:dark_white, "bg": s:none})
hi! link EndOfBuffer LineNr
call s:h("ErrorMsg", {"fg": s:dark_red, "bg": s:none})
hi! link VertSplit Pmenu
hi! link Folded Pmenu
hi! link FoldColumn Pmenu
hi! link SignColumn Pmenu
hi! link IncSearch Search
call s:h("LineNr", {"fg": s:black, "bg": s:none})
hi! link LineNrAbove LineNr
hi! link LineNrBelow LineNr
hi! link CursorLineNr LineNr
hi! link CursorLineFold LineNr
"CursorLineSign
hi! link MatchParen Normal
"MessageWindow
hi! link ModeMsg Normal
hi! link MsgArea Normal
hi! link MoreMsg Normal
"NonText
call s:h("Normal",		{"fg": s:dark_white, "bg": s:none})
"First
call s:h("Pmenu",		{"fg": s:black})
call s:h("PmenuSel",		{"fg": s:blue })
hi! link PmenuKind Pmenu
hi! link PmenuKindSel PmenuSel
hi! link PmenuExtra Pmenu
hi! link PmenuExtraSel PmenuSel
hi! link PmenuSbar Pmenu
hi! link PmenuThumb Pmenu
"PmenuMatch
"PmenuMatchSel
"ComplMatchIns
"PopupSelected
"PopupNotificatio
"Question
"QuickFixLine
call s:h("Search", {"fg": s:dark_black, "bg": s:cyan})
call s:h("CurSearch", {"fg": s:dark_black, "bg": s:cyan})
"SpecialKey
hi! link SpellBad DiffDelete
hi! link SpellCap DiffChange
hi! link SpellLocal DiffChange
hi! link SpellRare DiffChange
hi! link StatusLine PmenuSel
hi! link StatusLineNC Pmenu
"StatusLineTerm
"StatusLineTermNC
hi! link TabLine Pmenu
hi! link TabLineFill Pmenu
hi! link TabLineSel PmenuSel
"Terminal
"Title
hi! link Visual CursorLine
"VisualNOS
"WarningMsg
"WildMenu

"__SYNTAX__

call s:h("Comment",		{"fg": s:black, "bg": s:none})
call s:h("Constant",		{"fg": s:green, "bg": s:none})
call s:h("Identifier",		{"fg": s:cyan, "bg": s:none})
call s:h("Function",		{"fg": s:yellow, "bg": s:none})
call s:h("Statement",		{"fg": s:magenta, "bg": s:none})
call s:h("Operator",		{"fg": s:yellow, "bg": s:none})
call s:h("PreProc",		{"fg": s:magenta, "bg": s:none})
call s:h("Special",		{"fg": s:dark_white, "bg": s:none})
call s:h("Type",		{"fg": s:blue, "bg": s:none})
