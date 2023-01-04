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
"  \ 'accent1':    '#ffffd7',
"  \ 'accent2':    '#ffd787',
"  \ 'grey1':      '#8a8a8a',
"  \ 'grey2':      '#585858',
"  \ 'grey3':      '#3a3a3a',
"\ }

let s:Colors256 = {
\ 'background': '235',
\ 'red':        '167',
\ 'blue':       '110',
\ 'green':      '150',
\ 'purple':     '140',
\ 'yellow':     '227',
\ 'orange':     '208',
\ 'accent1':    '230',
\ 'accent2':    '222',
\ 'white':      '253',
\ 'grey1':      '250',
\ 'grey2':      '245',
\ 'grey3':      '240',
\ 'grey4':      '235',
\ 'black':      '232',
\ }

let s:groups = {
\   "normal": { 
\     "color": "white", 
\     "groups": ["Normal"] 
\   },
\   "keyword": { 
\     "color": "blue", 
\     "groups": ["Conditional", "PreProc", "Title", "Type", "Underline"] 
\   },
\   "identifier": { 
\     "color": "green", 
\     "groups": ["Boolean", "Conditional", "Identifier", "Repeat", "Special", "Statement"] 
\   },
\   "string": { 
\     "color": "orange", 
\     "groups": ["Character", "String"] 
\   },
\   "number": { 
\     "color": "yellow", 
\     "groups": ["Number"] 
\   },
\   "tagsAndAnnotations": { 
\     "color": "purple", 
\     "groups": ["jsxComponentName", "jsxTag"] 
\   },
\   "function": { 
\     "color": "accent1", 
\     "groups": ["Function", "Operator"] 
\   },
\   "error": { 
\     "color": "red", 
\     "groups": ["Error", "ErrorMsg", "CocErrorFloat", "CocErrorSign"] 
\   },
\   "info": { 
\     "color": "blue", 
\     "groups": ["CocHintFloat", "CocHintSign", "CocInfoFloat", "CocInfoSign"]
\   },
\   "warning": { 
\     "color": "accent2", 
\     "groups": ["Warning", "WarningMsg", "CocWarningFloat", "CocWarningSign"]
\   },
\   "miscAccent": { 
\     "color": "accent2", 
\     "groups": ["Todo"]
\   },
\   "comment": { 
\     "color": "grey1", 
\     "groups": ["Comment"]
\   },
\ }

 
function! s:CreateHighlight(group, fg, bg) 
  execute "hi " . a:group . " ctermfg=" . s:Colors256[a:fg] . " ctermbg=" . s:Colors256[a:bg] . " cterm=none"
endfunction


for syntax_groups in values(s:groups)
  for syntax_group in syntax_groups["groups"]
    call s:CreateHighlight(syntax_group, syntax_groups["color"], 'background')
  endfor
endfor
