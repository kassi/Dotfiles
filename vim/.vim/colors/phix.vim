" Phix colour scheme
" https://github.com/stuartherbert/dotfiles/
:set background=dark
:highlight clear
if version > 580
 hi clear
 if exists("syntax_on")
 syntax reset
 endif
endif
let colors_name = "phix"
:hi Normal guifg=#e6e0db guibg=#232323 ctermfg=254
:hi Cursor guifg=#232323 guibg=#FFFF00
:hi VertSplit guibg=#c2bfa5 guifg=grey40 gui=none cterm=reverse
:hi Folded guibg=black guifg=grey40
:hi FoldColumn guibg=black guifg=grey20
:hi IncSearch guifg=green guibg=black
:hi ModeMsg guifg=goldenrod
:hi MoreMsg guifg=SeaGreen
:hi NonText guifg=RoyalBlue guibg=grey15
:hi Question guifg=springgreen
:hi Search guibg=peru guifg=wheat
:hi SpecialKey guifg=yellowgreen
:hi StatusLine guibg=#c2bfa5 guifg=black gui=none 
:hi StatusLineNC guibg=#c2bfa5 guifg=grey40 gui=none
:hi Title guifg=gold
:hi Visual gui=none guifg=khaki guibg=olivedrab
:hi WarningMsg guifg=salmon
:hi Statement guifg=#e09146 gui=none ctermfg=215
:hi String guifg=#78add2 ctermfg=74
:hi Constant guifg=#78add2 ctermfg=74
:hi Comment gui=none guifg=#969696 ctermfg=246
:hi Special guifg=#e09146 ctermfg=215
:hi Identifier guifg=#f8fa83 ctermfg=229 cterm=none
:hi Include guifg=#e09146 ctermfg=215
:hi PreProc guifg=#f8fa83 ctermfg=229
:hi Operator guifg=#e09146 ctermfg=215
:hi Define guifg=#e09146 ctermfg=215
:hi Type guifg=#CA729E gui=none ctermfg=176
:hi Function guifg=#a4c460 ctermfg=149
:hi Structure guifg=#e09146 ctermfg=215
:hi LineNr guifg=grey50 ctermfg=246
:hi Ignore guifg=grey40
:hi Todo guifg=orangered guibg=yellow2
:hi Directory guifg=#78add2
:hi ErrorMsg guifg=White guibg=Red
:hi VisualNOS cterm=bold,underline
:hi WildMenu ctermfg=0 ctermbg=3
:hi DiffAdd ctermbg=4
:hi DiffChange ctermbg=5
:hi DiffDelete cterm=bold ctermfg=4 ctermbg=6
:hi DiffText cterm=bold ctermbg=1
:hi Underlined cterm=underline ctermfg=5
:hi Error guifg=White guibg=Red cterm=bold ctermfg=7 ctermbg=1
:hi SpellErrors guifg=White guibg=Red cterm=bold ctermfg=7 ctermbg=1

" Support for bash
:hi link shFor Identifier

" Support for php
" Assumes you are using the PHP syntax highlighting from:
"   git://github.com/shawncplus/php.vim.git

:hi phpRegion guifg=#a4c460 ctermfg=149

:hi phpDefineFuncProto guifg=#a7ed65 gui=italic ctermfg=155
:hi phpStructureHere guifg=#a7ed65 gui=italic ctermfg=155
:hi phpDefineClassName guifg=#a4c460 ctermfg=149
:hi phpFuncBlock guifg=#a4c460 ctermfg=149
:hi phpDefineMethodName guifg=#a4c460 ctermfg=149
:hi phpSpecialMethods guifg=#a7ed65 ctermfg=149
:hi phpMethodsVar guifg=#a4c460 ctermfg=149
:hi phpStorageClass guifg=#e09146 ctermfg=215
:hi phpOperator guifg=#e09146 ctermfg=215
:hi phpMethodCall guifg=#a4c460 ctermfg=149
:hi phpPropertyHere guifg=#f8fa83 ctermfg=229
:hi phpPropertySelector guifg=#e09146 ctermfg=215
:hi phpVarSelector guifg=#f8fa83 ctermfg=229
:hi phpArrayParens guifg=#CA729E ctermfg=176
:hi phpArrayPair guifg=#e09146 ctermfg=215
:hi phpBrace guifg=#CA729E ctermfg=176

:hi phpParent guifg=#e6e0db ctermfg=254
:hi phpBraceFunc guifg=#e6e0db ctermfg=254
:hi phpBraceClass guifg=#e6e0db ctermfg=254
:hi phpStatement guifg=#e09146 ctermfg=215

:hi phpSuperglobal guifg=#f8fa83 gui=italic ctermfg=229
:hi phpCommentTitle guifg=#969696 ctermfg=246
:hi phpDocTags guifg=#e09146 ctermfg=215
:hi phpFunctions guifg=#a7ed65 ctermfg=155
:hi phpSpecialFunctions guifg=#a7ed65 ctermfg=155
:hi phpStatementRegion guifg=#a7ed65 ctermfg=155
:hi phpParentRegion guifg=#a7ed65 ctermfg=155
:hi phpStaticCall guifg=#a4c460 ctermfg=149
