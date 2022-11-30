set background=dark
hi clear

if exists("syntax_on")
  syntax reset
endif
let colors_name="obsidian"
 
"let s:Colors256 = {
"  \ 'background': '#262626',
"  \ 'white':      '#dadada',
"  \ 'red':        '#d75f00',
"  \ 'blue':       '#87afd7',
"  \ 'green':      '#afd787',
"  \ 'purple':     '#af87d7',
"  \ 'yellow':     '#ffff5f',
"  \ 'orange':     '#ff8700',
"  \ 'accent1':    '#d7d7af',
"  \ 'accent2':    '#ffd787',
"  \ 'grey1':      '#8a8a8a',
"  \ 'grey2':      '#585858',
"  \ 'grey3':      '#3a3a3a',
"\ }

let s:Colors256 = {
  \ 'background': '235',
  \ 'white':      '253',
  \ 'red':        '167',
  \ 'blue':       '110',
  \ 'green':      '150',
  \ 'purple':     '140',
  \ 'yellow':     '227',
  \ 'orange':     '208',
  \ 'accent1':    '187',
  \ 'accent2':    '222',
  \ 'grey1':      '237',
  \ 'grey2':      '240',
  \ 'grey3':      '245',
\ }

execute "hi Ignore ctermfg=" . s:Colors256['white']
execute "hi Normal ctermfg=" . s:Colors256['white'] . " ctermbg=" . s:Colors256['background'] . " cterm=none"
 
" Syntax
execute "hi Error ctermfg="       . s:Colors256['red']    . " ctermbg=" . s:Colors256['background'] . " cterm=none"
execute "hi Boolean ctermfg="     . s:Colors256['green']  . " ctermbg=" . s:Colors256['background'] . " cterm=none"
execute "hi Conditional ctermfg=" . s:Colors256['green']  . " ctermbg=" . s:Colors256['background'] . " cterm=none"
execute "hi Repeat ctermfg="      . s:Colors256['green']  . " ctermbg=" . s:Colors256['background'] . " cterm=none"
execute "hi Special ctermfg="     . s:Colors256['green']  . " ctermbg=" . s:Colors256['background'] . " cterm=none"
execute "hi Statement ctermfg="   . s:Colors256['green']  . " ctermbg=" . s:Colors256['background'] . " cterm=none"
execute "hi Identifier ctermfg="  . s:Colors256['green']  . " ctermbg=" . s:Colors256['background'] . " cterm=none"
execute "hi Type ctermfg="        . s:Colors256['blue']   . " ctermbg=" . s:Colors256['background'] . " cterm=none"
execute "hi Underline ctermfg="   . s:Colors256['blue']   . " ctermbg=" . s:Colors256['background'] . " cterm=none"
execute "hi Number ctermfg="      . s:Colors256['yellow'] . " ctermbg=" . s:Colors256['background'] . " cterm=none"
execute "hi Operator ctermfg="    . s:Colors256['yellow'] . " ctermbg=" . s:Colors256['background'] . " cterm=none"
execute "hi Constant ctermfg="    . s:Colors256['purple'] . " ctermbg=" . s:Colors256['background'] . " cterm=none"
execute "hi Character ctermfg="   . s:Colors256['orange'] . " ctermbg=" . s:Colors256['background'] . " cterm=none"
execute "hi String ctermfg="      . s:Colors256['orange'] . " ctermbg=" . s:Colors256['background'] . " cterm=none"
execute "hi Comment ctermfg="     . s:Colors256['grey3']  . " ctermbg=" . s:Colors256['background'] . " cterm=none"
 
execute "hi Title ctermfg="       . s:Colors256['white']   . " ctermbg=" . s:Colors256['background'] . " cterm=none"
execute "hi PreProc ctermfg="     . s:Colors256['white']   . " ctermbg=" . s:Colors256['background'] . " cterm=none"
execute "hi Todo ctermfg="        . s:Colors256['accent2'] . " ctermbg=" . s:Colors256['background'] . " cterm=none"

" Misc
execute "hi NormalFloast ctermfg=" . s:Colors256['white']      . " ctermbg=" . s:Colors256['grey2']      . " cterm=none"
execute "hi Pmenu ctermfg="        . s:Colors256['white']      . " ctermbg=" . s:Colors256['grey1']      . " cterm=none"
execute "hi ErrorMsg ctermfg="     . s:Colors256['red']        . " ctermbg=" . s:Colors256['background'] . " cterm=none"
execute "hi Directory ctermfg="    . s:Colors256['blue']       . " ctermbg=" . s:Colors256['background'] . " cterm=none"
execute "hi WarningMsg ctermfg="   . s:Colors256['accent2']    . " ctermbg=" . s:Colors256['background'] . " cterm=none"
execute "hi MatchParen ctermfg="   . s:Colors256['background'] . " ctermbg=" . s:Colors256['accent2']    . " cterm=none"
execute "hi Search ctermfg="       . s:Colors256['background'] . " ctermbg=" . s:Colors256['accent2']    . " cterm=none"
 
" Coc
execute "hi CocErrorFloat ctermfg="   . s:Colors256['red']     . " cterm=none"
execute "hi CocErrorSign ctermfg="    . s:Colors256['red']     . " cterm=none"
execute "hi CocHintFloat ctermfg="    . s:Colors256['blue']    . " cterm=none"
execute "hi CocHintSign ctermfg="     . s:Colors256['blue']    . " cterm=none"
execute "hi CocInfoFloat ctermfg="    . s:Colors256['blue']    . " cterm=none"
execute "hi CocInfoSign ctermfg="     . s:Colors256['blue']    . " cterm=none"
execute "hi CocWarningFloat ctermfg=" . s:Colors256['accent2'] . " cterm=none"
execute "hi CocWarningSign ctermfg="  . s:Colors256['accent2'] . " cterm=none"
 
" Tsx
execute "hi tsxComponentName ctermfg="      . s:Colors256['green'] . " ctermbg=" . s:Colors256['background'] . " cterm=none"
execute "hi tsxTag ctermfg="                . s:Colors256['green'] . " ctermbg=" . s:Colors256['background'] . " cterm=none"
execute "hi tsxTagName ctermfg="            . s:Colors256['green'] . " ctermbg=" . s:Colors256['background'] . " cterm=none"
execute "hi tsxCloseComponentName ctermfg=" . s:Colors256['green'] . " ctermbg=" . s:Colors256['background'] . " cterm=none"
execute "hi tsxCloseTag ctermfg="           . s:Colors256['green'] . " ctermbg=" . s:Colors256['background'] . " cterm=none"
execute "hi tsxCloseTagName ctermfg="       . s:Colors256['green'] . " ctermbg=" . s:Colors256['background'] . " cterm=none"

 
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
