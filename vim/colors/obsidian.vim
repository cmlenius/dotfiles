set background=dark
hi clear

if exists("syntax_on")
  syntax reset
endif
let colors_name="obsidian"

let s:Colors256 = [
  \ [ '253', '#dadada',  0 ], 
  \ [ '167', '#d75f5f',  1 ], 
  \ [ '150', '#afd787',  2 ], 
  \ [ '227', '#ffff5f',  3 ], 
  \ [ '110', '#87afd7',  4 ], 
  \ [ '140', '#af87d7',  5 ], 
  \ [ '178', '#d7af00',  6 ], 
  \ [ '208', '#ff8700',  7 ], 
  \ [ '245', '#8a8a8a',  8 ], 
  \ [ '240', '#585858',  9 ], 
  \ [ '237', '#3a3a3a', 10 ], 
  \ [ '235', '#262626', 11 ], 
  \ ]

execute "hi Ignore ctermfg=" . s:Colors256[0][0]
execute "hi Normal ctermfg=" . s:Colors256[0][0] . " ctermbg=" . s:Colors256[11][0] . " cterm=none"
 
" Syntax
execute "hi Boolean ctermfg="     . s:Colors256[2][0] . " ctermbg=" . s:Colors256[11][0] . " cterm=none"
execute "hi Conditional ctermfg=" . s:Colors256[2][0] . " ctermbg=" . s:Colors256[11][0] . " cterm=none"
execute "hi Constant ctermfg="    . s:Colors256[5][0] . " ctermbg=" . s:Colors256[11][0] . " cterm=none"
execute "hi Character ctermfg="   . s:Colors256[7][0] . " ctermbg=" . s:Colors256[11][0] . " cterm=none"
execute "hi Comment ctermfg="     . s:Colors256[8][0] . " ctermbg=" . s:Colors256[11][0] . " cterm=none"
execute "hi Error ctermfg="       . s:Colors256[1][0] . " ctermbg=" . s:Colors256[11][0] . " cterm=none"
execute "hi Identifier ctermfg="  . s:Colors256[2][0] . " ctermbg=" . s:Colors256[11][0] . " cterm=none"
execute "hi Number ctermfg="      . s:Colors256[3][0] . " ctermbg=" . s:Colors256[11][0] . " cterm=none"
execute "hi Operator ctermfg="    . s:Colors256[3][0] . " ctermbg=" . s:Colors256[11][0] . " cterm=none"
execute "hi PreProc ctermfg="     . s:Colors256[0][0] . " ctermbg=" . s:Colors256[11][0] . " cterm=none"
execute "hi Repeat ctermfg="      . s:Colors256[2][0] . " ctermbg=" . s:Colors256[11][0] . " cterm=none"
execute "hi Special ctermfg="     . s:Colors256[2][0] . " ctermbg=" . s:Colors256[11][0] . " cterm=none"
execute "hi Statement ctermfg="   . s:Colors256[2][0] . " ctermbg=" . s:Colors256[11][0] . " cterm=none"
execute "hi String ctermfg="      . s:Colors256[7][0] . " ctermbg=" . s:Colors256[11][0] . " cterm=none"
execute "hi Title ctermfg="       . s:Colors256[0][0] . " ctermbg=" . s:Colors256[11][0] . " cterm=none"
execute "hi Todo ctermfg="        . s:Colors256[6][0] . " ctermbg=" . s:Colors256[11][0] . " cterm=none"
execute "hi Type ctermfg="        . s:Colors256[4][0] . " ctermbg=" . s:Colors256[11][0] . " cterm=none"
execute "hi Underline ctermfg="   . s:Colors256[4][0] . " ctermbg=" . s:Colors256[11][0] . " cterm=none"

" Misc
execute "hi Directory ctermfg="    . s:Colors256[4][0]  . " ctermbg=" . s:Colors256[11][0] . " cterm=none"
execute "hi ErrorMsg ctermfg="     . s:Colors256[1][0]  . " ctermbg=" . s:Colors256[11][0] . " cterm=none"
execute "hi MatchParen ctermfg="   . s:Colors256[11][0] . " ctermbg=" . s:Colors256[6][0] . " cterm=none"
execute "hi NormalFloast ctermfg=" . s:Colors256[0][0]  . " ctermbg=" . s:Colors256[9][0]  . " cterm=none"
execute "hi Pmenu ctermfg="        . s:Colors256[0][0]  . " ctermbg=" . s:Colors256[10][0] . " cterm=none"
execute "hi Search ctermfg="       . s:Colors256[11][0] . " ctermbg=" . s:Colors256[6][0]  . " cterm=none"
execute "hi WarningMsg ctermfg="   . s:Colors256[6][0]  . " ctermbg=" . s:Colors256[11][0] . " cterm=none"
 
" Coc
execute "hi CocErrorFloat ctermfg="   . s:Colors256[1][0] . " cterm=none"
execute "hi CocErrorSign ctermfg="    . s:Colors256[1][0] . " cterm=none"
execute "hi CocHintFloat ctermfg="    . s:Colors256[4][0] . " cterm=none"
execute "hi CocHintSign ctermfg="     . s:Colors256[4][0] . " cterm=none"
execute "hi CocInfoFloat ctermfg="    . s:Colors256[4][0] . " cterm=none"
execute "hi CocInfoSign ctermfg="     . s:Colors256[4][0] . " cterm=none"
execute "hi CocWarningFloat ctermfg=" . s:Colors256[6][0] . " cterm=none"
execute "hi CocWarningSign ctermfg="  . s:Colors256[6][0] . " cterm=none"
 
" Tsx
execute "hi tsxComponentName ctermfg="      . s:Colors256[2][0] . " ctermbg=" . s:Colors256[11][0] . " cterm=none"
execute "hi tsxTag ctermfg="                . s:Colors256[2][0] . " ctermbg=" . s:Colors256[11][0] . " cterm=none"
execute "hi tsxTagName ctermfg="            . s:Colors256[2][0] . " ctermbg=" . s:Colors256[11][0] . " cterm=none"
execute "hi tsxCloseComponentName ctermfg=" . s:Colors256[2][0] . " ctermbg=" . s:Colors256[11][0] . " cterm=none"
execute "hi tsxCloseTag ctermfg="           . s:Colors256[2][0] . " ctermbg=" . s:Colors256[11][0] . " cterm=none"
execute "hi tsxCloseTagName ctermfg="       . s:Colors256[2][0] . " ctermbg=" . s:Colors256[11][0] . " cterm=none"

 
"execute "hi ColorColumn ctermfg=NONE ctermbg=" . s:Colors256[13] . " cterm=none"
"execute "hi Cursor ctermfg="      . s:Colors256[12] . " ctermbg=" . s:Colors256[5]  . " cterm=none"
"execute "hi CursorIM ctermfg="    . s:Colors256[7]  . " ctermbg=" . s:Colors256[5]  . " cterm=none"
"execute "hi CursorLine ctermfg=NONE ctermbg=" . s:Colors256[13]
"execute "hi CursorColumn ctermfg=". s:Colors256[1]  . " ctermbg=" . s:Colors256[13] . " cterm=none"
"execute "hi FoldColumn ctermfg="  . s:Colors256[13] . " ctermbg=" . s:Colors256[12] . " cterm=none"
"execute "hi Folded ctermfg="      . s:Colors256[12] . " ctermbg=" . s:Colors256[11] . " cterm=none"
"execute "hi IncSearch ctermfg="   . s:Colors256[1]  . " ctermbg=" . s:Colors256[12] . " cterm=none"
"execute "hi LineNr ctermfg="      . s:Colors256[8]  . " ctermbg=" . s:Colors256[12] . " cterm=none"
"execute "hi ModeMsg ctermfg="     . s:Colors256[5]  . " ctermbg=" . s:Colors256[12] . " cterm=none"
"execute "hi MoreMsg ctermfg="     . s:Colors256[5]  . " ctermbg=" . s:Colors256[12] . " cterm=none"
"execute "hi NonText ctermfg="     . s:Colors256[17]  . " ctermbg=" . s:Colors256[12] . " cterm=none"
"execute "hi PmenuSel ctermfg="    . s:Colors256[13] . " ctermbg=" . s:Colors256[9]  . " cterm=none"
"execute "hi Question ctermfg="    . s:Colors256[0]  . " ctermbg=" . s:Colors256[12] . " cterm=none"
"execute "hi SpecialKey ctermfg="  . s:Colors256[10] . " ctermbg=" . s:Colors256[12] . " cterm=none"
"execute "hi StatusLine ctermfg="  . s:Colors256[15] . " ctermbg=" . s:Colors256[16] . " cterm=none"
"execute "hi StatusLineNC ctermfg=". s:Colors256[15] . " ctermbg=" . s:Colors256[8]  . " cterm=none"
"execute "hi TabLine ctermfg="     . s:Colors256[8]  . " ctermbg=" . s:Colors256[12] . " cterm=none"
"execute "hi TabLineFill ctermfg=" . s:Colors256[12] . " ctermbg=" . s:Colors256[13] . " cterm=none"
"execute "hi TabLineSel ctermfg="  . s:Colors256[1]  . " ctermbg=" . s:Colors256[13] . " cterm=none"
"execute "hi Tooltip ctermfg="     . s:Colors256[9]  . " ctermbg=" . s:Colors256[8]  . " cterm=none"
"execute "hi VertSplit ctermfg="   . s:Colors256[0]  . " ctermbg=" . s:Colors256[13] . " cterm=none"
"execute "hi Visual  ctermfg="     . s:Colors256[1]  . " ctermbg=" . s:Colors256[0]  . " cterm=none"
"execute "hi WildMenu  ctermfg="   . s:Colors256[14] . " ctermbg=" . s:Colors256[5]  . " cterm=none"
