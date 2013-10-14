" Notes: To check the meaning of the highlight groups, :help 'highlight'

" Syntax settings {{{1
set background=dark
highlight clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name="harlem-nights"
" }}}

" ROW LAYOUT {{{1
"----------------------------------------------------------
" Syntax group     | Foreground   | Background   | Style  |
"----------------------------------------------------------
" }}}

" Editor settings {{{1
" --------------------------------
hi Normal          ctermfg=250    ctermbg=235    cterm=none
hi Cursor          ctermfg=none   ctermbg=none   cterm=none
hi CursorLine      ctermfg=none   ctermbg=236    cterm=none
hi LineNr          ctermfg=239    ctermbg=none   cterm=none
hi CursorLineNR    ctermfg=130    ctermbg=none   cterm=none
" }}}

" Number column {{{1
" --------------------------------
hi CursorColumn    ctermfg=none   ctermbg=236    cterm=none
hi FoldColumn      ctermfg=4      ctermbg=235    cterm=none
hi SignColumn      ctermfg=4      ctermbg=237    cterm=none
hi Folded          ctermfg=245    ctermbg=236    cterm=none
" }}}

" Window/Tab delimiters {{{1
" --------------------------------
hi VertSplit       ctermfg=240    ctermbg=240    cterm=none
hi ColorColumn     ctermfg=none   ctermbg=236    cterm=none
hi TabLine         ctermfg=240    ctermbg=250    cterm=reverse
hi TabLineFill     ctermfg=240    ctermbg=250    cterm=reverse
hi TabLineSel      ctermfg=none   ctermbg=none   cterm=bold
" }}}

"  File Navigation / Searching {{{1
" --------------------------------
hi Directory       ctermfg=109    ctermbg=none   cterm=none
hi Search          ctermfg=235    ctermbg=222    cterm=none
hi IncSearch       ctermfg=none   ctermbg=none   cterm=reverse
" }}}

" Prompt/Status {{{1
" --------------------------------
hi StatusLine      ctermfg=240    ctermbg=222    cterm=reverse
hi StatusLineNC    ctermfg=240    ctermbg=250    cterm=reverse
hi WildMenu        ctermfg=0      ctermbg=11     cterm=none
hi Question        ctermfg=143    ctermbg=none   cterm=none
hi Title           ctermfg=245    ctermbg=none   cterm=none
hi ModeMsg         ctermfg=143    ctermbg=none   cterm=bold
hi MoreMsg         ctermfg=143    ctermbg=none   cterm=none
" }}}

" Visual aid {{{1
" --------------------------------
hi MatchParen      ctermfg=none   ctermbg=239    cterm=none
hi Visual          ctermfg=none   ctermbg=239    cterm=none
hi VisualNOS       ctermfg=none   ctermbg=none   cterm=bold,underline
hi NonText         ctermfg=239    ctermbg=none   cterm=none
hi Todo            ctermfg=245    ctermbg=234    cterm=bold
hi Underlined      ctermfg=5      ctermbg=none   cterm=underline
hi Error           ctermfg=15     ctermbg=9      cterm=none
hi ErrorMsg        ctermfg=15     ctermbg=1      cterm=none
hi WarningMsg      ctermfg=167    ctermbg=none   cterm=none
hi Ignore          ctermfg=15     ctermbg=none   cterm=none
hi SpecialKey      ctermfg=239    ctermbg=none   cterm=none
" }}}

" Variable types {{{1
" -------------------------------
hi Constant        ctermfg=173    ctermbg=none   cterm=none
hi String          ctermfg=143    ctermbg=none   cterm=none
hi StringDelimiter ctermfg=none   ctermbg=none   cterm=none
hi Character       ctermfg=173    ctermbg=none   cterm=none
hi Number          ctermfg=173    ctermbg=none   cterm=none
hi Boolean         ctermfg=173    ctermbg=none   cterm=none
hi Float           ctermfg=173    ctermbg=none   cterm=none
hi Identifier      ctermfg=167    ctermbg=none   cterm=none
hi Function        ctermfg=109    ctermbg=none   cterm=none
" }}}

" Language constructs {{{1
" -------------------------------
hi Statement       ctermfg=250    ctermbg=none   cterm=none
hi Conditional     ctermfg=250    ctermbg=none   cterm=none
hi Repeat          ctermfg=250    ctermbg=none   cterm=none
hi Label           ctermfg=250    ctermbg=none   cterm=none
hi Operator        ctermfg=109    ctermbg=none   cterm=none
hi Keyword         ctermfg=250    ctermbg=none   cterm=none
hi Exception       ctermfg=250    ctermbg=none   cterm=none
hi Comment         ctermfg=101    ctermbg=none   cterm=none
hi Special         ctermfg=250    ctermbg=none   cterm=none
hi SpecialChar     ctermfg=none   ctermbg=none   cterm=none
hi Tag             ctermfg=none   ctermbg=none   cterm=none
hi Delimiter       ctermfg=none   ctermbg=none   cterm=none
hi SpecialComment  ctermfg=none   ctermbg=none   cterm=none
hi Debug           ctermfg=none   ctermbg=none   cterm=none
" }}}

" C like {{{1
" -------------------------------
hi PreProc         ctermfg=139    ctermbg=none   cterm=none
hi Include         ctermfg=109    ctermbg=none   cterm=none
hi Define          ctermfg=139    ctermbg=none   cterm=none
hi Macro           ctermfg=139    ctermbg=none   cterm=none
hi PreCondit       ctermfg=139    ctermbg=none   cterm=none
hi Type            ctermfg=109    ctermbg=none   cterm=none
hi StorageClass    ctermfg=109    ctermbg=none   cterm=none
hi Structure       ctermfg=139    ctermbg=none   cterm=none
hi Typedef         ctermfg=none   ctermbg=none   cterm=none
" }}}

" Diff {{{1
" -------------------------------
hi DiffAdd         ctermfg=none   ctermbg=81     cterm=none
hi DiffChange      ctermfg=none   ctermbg=225    cterm=none
hi DiffDelete      ctermfg=12     ctermbg=159    cterm=none
hi DiffText        ctermfg=none   ctermbg=9      cterm=bold
" }}}

" Completion menu {{{1
" -------------------------------
hi Pmenu           ctermfg=250    ctermbg=239    cterm=none
hi PmenuSel        ctermfg=250    ctermbg=239    cterm=reverse
hi PmenuSbar       ctermbg=248    ctermbg=none   cterm=none
hi PmenuThumb      ctermbg=0      ctermbg=none   cterm=none
" }}}

" Spelling {{{1
" -------------------------------
hi SpellBad        ctermfg=124    ctermbg=236    cterm=underline
hi SpellCap        ctermfg=20     ctermbg=236    cterm=underline
hi SpellLocal      ctermfg=20     ctermbg=236    cterm=underline
hi SpellRare       ctermfg=20     ctermbg=236    cterm=underline
" }}}

" Specific settings {{{1
"--------------------------------------------------------------------
hi Conceal                ctermfg=7      ctermbg=242    cterm=none
hi pythonStatement        ctermfg=139    ctermbg=none   cterm=none
hi pythonFunction         ctermfg=109    ctermbg=none   cterm=none
hi pythonConditional      ctermfg=139    ctermbg=none   cterm=none
hi pythonRepeat           ctermfg=109    ctermbg=none   cterm=none
hi pythonException        ctermfg=139    ctermbg=none   cterm=none
hi pythonInclude          ctermfg=139    ctermbg=none   cterm=none
hi pythonPreCondit        ctermfg=139    ctermbg=none   cterm=none
hi pythonExClass          ctermfg=173    ctermbg=none   cterm=none
hi javaScriptBraces       ctermfg=250    ctermbg=none   cterm=none
hi javaScriptFunction     ctermfg=139    ctermbg=none   cterm=none
hi javaScriptConditional  ctermfg=139    ctermbg=none   cterm=none
hi javaScriptRepeat       ctermfg=139    ctermbg=none   cterm=none
hi javaScriptNumber       ctermfg=173    ctermbg=none   cterm=none
hi javaScriptMember       ctermfg=173    ctermbg=none   cterm=none
hi htmlTag                ctermfg=167    ctermbg=none   cterm=none
hi htmlTagName            ctermfg=167    ctermbg=none   cterm=none
hi htmlArg                ctermfg=167    ctermbg=none   cterm=none
hi htmlScriptTag          ctermfg=167    ctermbg=none   cterm=none
hi diffAdded              ctermfg=143    ctermbg=none   cterm=none
hi diffRemoved            ctermfg=167    ctermbg=none   cterm=none
hi clojureConstant        ctermfg=173    ctermbg=none   cterm=none
hi clojureBoolean         ctermfg=173    ctermbg=none   cterm=none
hi clojureCharacter       ctermfg=173    ctermbg=none   cterm=none
hi clojureKeyword         ctermfg=143    ctermbg=none   cterm=none
hi clojureNumber          ctermfg=173    ctermbg=none   cterm=none
hi clojureString          ctermfg=143    ctermbg=none   cterm=none
hi clojureRegexp          ctermfg=143    ctermbg=none   cterm=none
hi clojureParen           ctermfg=109    ctermbg=none   cterm=none
hi clojureVariable        ctermfg=222    ctermbg=none   cterm=none
hi clojureCond            ctermfg=109    ctermbg=none   cterm=none
hi clojureDefine          ctermfg=139    ctermbg=none   cterm=none
hi clojureException       ctermfg=167    ctermbg=none   cterm=none
hi clojureFunc            ctermfg=109    ctermbg=none   cterm=none
hi clojureMacro           ctermfg=109    ctermbg=none   cterm=none
hi clojureRepeat          ctermfg=109    ctermbg=none   cterm=none
hi clojureSpecial         ctermfg=139    ctermbg=none   cterm=none
hi clojureQuote           ctermfg=109    ctermbg=none   cterm=none
hi clojureUnquote         ctermfg=109    ctermbg=none   cterm=none
hi clojureMeta            ctermfg=109    ctermbg=none   cterm=none
hi clojureDeref           ctermfg=109    ctermbg=none   cterm=none
hi clojureAnonArg         ctermfg=109    ctermbg=none   cterm=none
hi clojureDispatch        ctermfg=109    ctermbg=none   cterm=none
hi SyntasticError         ctermfg=52     ctermbg=none   cterm=underline,bold 
hi SyntasticWarning       ctermfg=94     ctermbg=none   cterm=underline,bold
" hi SyntasticStyleErrorLine    ctermfg=94     ctermbg=none   cterm=bold
" hi SyntasticErrorLine         ctermfg=94     ctermbg=none   cterm=bold
" hi SyntasticStyleWarningLine  ctermfg=94     ctermbg=none   cterm=bold
" hi SyntasticWarningLine       ctermfg=94     ctermbg=none   cterm=bold
" }}}

" vim: fdm=marker
