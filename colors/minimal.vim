"
" minimal.vim
"
" Minimal colorscheme with some flash for non-code elements
"
highlight clear
if exists("syntax_on")
    syntax reset
endif

let colors_name = "minimal"

set background=dark

hi Normal       cterm=NONE ctermbg=232  ctermfg=251     gui=NONE    guibg=#080808  guifg=#c6c6c6
hi SpecialKey   cterm=BOLD              ctermfg=NONE    gui=BOLD                   guifg=NONE
hi IncSearch    cterm=BOLD ctermbg=130  ctermfg=232     gui=NONE    guibg=#af5f00  guifg=#080808
hi Search       cterm=NONE ctermbg=226  ctermfg=232     gui=NONE    guibg=#ffff00  guifg=#080808
hi MoreMsg      cterm=BOLD              ctermfg=NONE    gui=BOLD                   guifg=NONE
hi ModeMsg      cterm=BOLD              ctermfg=NONE    gui=BOLD                   guifg=NONE
hi LineNr       cterm=NONE ctermbg=232  ctermfg=233     gui=NONE    guibg=#080808  guifg=#121212
hi StatusLine   cterm=BOLD ctermbg=233  ctermfg=251     gui=BOLD    guibg=#121212  guifg=#c6c6c6
hi StatusLineNC cterm=NONE ctermbg=233  ctermfg=240     gui=NONE    guibg=#121212  guifg=#585858
hi VertSplit    cterm=NONE ctermbg=233  ctermfg=NONE    gui=NONE    guibg=#121212  guifg=NONE
hi Title        cterm=BOLD              ctermfg=NONE    gui=BOLD                   guifg=NONE
hi Visual       cterm=NONE ctermbg=235  ctermfg=NONE    gui=NONE    guibg=#262626  guifg=NONE
hi VisualNOS    cterm=BOLD              ctermfg=NONE    gui=BOLD                   guifg=NONE
hi WarningMsg   cterm=NONE ctermbg=232  ctermfg=214     gui=NONE    guibg=#080808  guifg=#ffaf00
hi WildMenu     cterm=NONE ctermbg=235  ctermfg=015     gui=NONE    guibg=#262626  guifg=#ffffff
hi Pmenu        cterm=NONE ctermbg=235  ctermfg=015     gui=NONE    guibg=#262626  guifg=#ffffff
hi PmenuSel     cterm=NONE ctermbg=235  ctermfg=202     gui=NONE    guibg=#262626  guifg=#ff5f00
hi PmenuSbar    cterm=NONE ctermbg=232  ctermfg=250     gui=NONE    guibg=#080808  guifg=#bcbcbc
hi Folded       cterm=NONE ctermbg=233  ctermfg=234     gui=NONE    guibg=#121212  guifg=#1c1c1c
hi FoldColumn   cterm=NONE ctermbg=233  ctermfg=234     gui=NONE    guibg=#121212  guifg=#1c1c1c
hi DiffAdd      cterm=BOLD ctermbg=233  ctermfg=040     gui=BOLD    guibg=#121212  guifg=#00d700
hi DiffChange   cterm=BOLD ctermbg=208  ctermfg=232     gui=BOLD    guibg=#ff8700  guifg=#080808
hi DiffDelete   cterm=NONE ctermbg=052  ctermfg=052     gui=NONE    guibg=#5f0000  guifg=#5f0000
hi DiffText     cterm=BOLD ctermbg=202  ctermfg=232     gui=BOLD    guibg=#ff5f00  guifg=#080808
hi Type         cterm=NONE ctermbg=232  ctermfg=111     gui=BOLD    guibg=#080808  guifg=#87afff
hi Keyword      cterm=NONE ctermbg=232  ctermfg=067     gui=BOLD    guibg=#080808  guifg=#5f87af
" hi Number       cterm=NONE ctermbg=232  ctermfg=NONE    gui=NONE    guibg=#080808  guifg=NONE
hi Char         cterm=NONE ctermbg=232  ctermfg=NONE    gui=NONE    guibg=#080808  guifg=NONE
hi Format       cterm=NONE ctermbg=232  ctermfg=NONE    gui=NONE    guibg=#080808  guifg=NONE
hi Special      cterm=NONE ctermbg=232  ctermfg=153     gui=NONE    guibg=#080808  guifg=#afd7ff
hi Constant     cterm=NONE ctermbg=232  ctermfg=117     gui=NONE    guibg=#080808  guifg=#87d7ff
hi Boolean      cterm=NONE ctermbg=232  ctermfg=117     gui=NONE    guibg=#080808  guifg=#87d7ff
hi PreProc      cterm=NONE ctermbg=232  ctermfg=74      gui=NONE    guibg=#080808  guifg=#5fafd7
hi Directive    cterm=NONE ctermbg=232  ctermfg=NONE    gui=NONE    guibg=#080808  guifg=NONE
hi Comment      cterm=NONE ctermbg=232  ctermfg=240     gui=ITALIC  guibg=#080808  guifg=#585858
hi Identifier   cterm=NONE ctermbg=232  ctermfg=117     gui=NONE    guibg=#080808  guifg=#87d7ff
" hi Func         cterm=NONE ctermbg=232  ctermfg=250     gui=NONE    guibg=#080808  guifg=#bcbcbc
hi Statement    cterm=NONE ctermbg=232  ctermfg=067     gui=BOLD    guibg=#080808  guifg=#5f87af
" hi Conditional  cterm=NONE ctermbg=232  ctermfg=NONE    gui=NONE    guibg=#080808  guifg=NONE
" hi Label        cterm=NONE ctermbg=232  ctermfg=NONE    gui=BOLD    guibg=#080808  guifg=NONE
hi Ignore       cterm=NONE ctermfg=NONE                 gui=NONE                   guifg=NONE
hi String       cterm=NONE ctermbg=232  ctermfg=025     gui=NONE    guibg=#080808  guifg=#005faf
hi ErrorMsg     cterm=NONE ctermbg=232  ctermfg=202     gui=NONE    guibg=#080808  guifg=#ff5f00
hi Error        cterm=NONE ctermbg=232  ctermfg=202     gui=NONE    guibg=#080808  guifg=#ff5f00
hi Todo         cterm=BOLD ctermbg=233  ctermfg=011     gui=BOLD    guibg=#121212  guifg=#ffff00
hi MatchParen   cterm=BOLD ctermbg=250  ctermfg=232     gui=BOLD    guibg=#bcbcbc  guifg=NONE
hi ColorColumn             ctermbg=255                              guibg=#eeeeee
hi SpellBad     cterm=NONE ctermbg=052  ctermfg=250     gui=NONE    guibg=#080808  guifg=#870000
hi SpellCap     cterm=NONE ctermbg=052  ctermfg=250     gui=NONE    guibg=#080808  guifg=#5f0000
hi SpellRare    cterm=NONE ctermbg=052  ctermfg=250     gui=NONE    guibg=#080808  guifg=#5f0000
hi SpellLocal   cterm=NONE ctermbg=052  ctermfg=250     gui=NONE    guibg=#080808  guifg=#5f0000
hi NonText      cterm=NONE ctermbg=232  ctermfg=233     gui=NONE    guibg=#080808  guifg=#121212
hi SignColumn   cterm=NONE ctermbg=233  ctermfg=234     gui=NONE    guibg=#121212  guifg=#1c1c1c
hi CursorLine   cterm=NONE ctermbg=233  ctermfg=NONE    gui=NONE    guibg=#121212  guifg=NONE
hi CursorLineNR cterm=NONE ctermbg=233  ctermfg=NONE    gui=NONE    guibg=#121212  guifg=NONE
hi Cursor                                                           guibg=orange   guifg=black
hi TabLineFill  cterm=NONE ctermbg=235  ctermfg=232     gui=NONE    guibg=#262626  guifg=#080808
hi TabLine      cterm=NONE ctermbg=235  ctermfg=232     gui=NONE    guibg=#262626  guifg=#c6c6c6
hi TabLineSel   cterm=NONE ctermbg=235  ctermfg=202     gui=NONE    guibg=#262626  guifg=#ff5f00
