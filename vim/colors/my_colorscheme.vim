" Vim color file

set background=dark
hi clear
if exists("syntax_on")
    syntax reset
endif
let colors_name="my_colorscheme"

" Base color
" ----------
hi Normal           guifg=#DADADA           guibg=#262626
hi Normal           ctermfg=253             ctermbg=235


" Comment Group
" -------------
" any comment
hi Comment          guifg=#8a8a8a                                  gui=italic
hi Comment          ctermfg=245                                     cterm=none


" Constant Group
" --------------
" any constant
hi Constant         guifg=#FFFF5F                                  gui=none
hi Constant         ctermfg=227                                     cterm=none
" strings
hi String           guifg=#FF8700                                   gui=none
hi String           ctermfg=208                                     cterm=none
" character constant
hi Character        guifg=#FF8700                                   gui=none
hi Character        ctermfg=208                                     cterm=none
" numbers decimal/hex
hi Number           guifg=#FFFF5F                                   gui=none
hi Number           ctermfg=227                                     cterm=none
" true, false
hi Boolean          guifg=#FFFF5F                                   gui=none
hi Boolean          ctermfg=227                                     cterm=none
" float
hi Float            guifg=#FFFF5F                                  gui=none
hi Float            ctermfg=227                                     cterm=none


" Identifier Group
" ----------------
" any variable name
hi Identifier       guifg=#AFD787                                   gui=none
hi Identifier       ctermfg=150                                     cterm=none
" function, method, class
hi Function         guifg=#AFD787                                   gui=none
hi Function         ctermfg=150                                     cterm=none


" Statement Group
" ---------------
" any statement
hi Statement        guifg=#AFD787                                   gui=none
hi Statement        ctermfg=150                                     cterm=none
" if, then, else
hi Conditional      guifg=#AFD787                                    gui=none
hi Conditional      ctermfg=150                                     cterm=none
" try, catch, throw, raise
hi Exception        guifg=#AFD787                                   gui=none
hi Exception        ctermfg=150                                     cterm=none
" for, while, do
hi Repeat           guifg=#AFD787                                 gui=none
hi Repeat           ctermfg=150                                     cterm=none
" case, default
hi Label            guifg=#AFD787                                   gui=none
hi Label            ctermfg=150                                     cterm=none
" sizeof, +, *
hi Operator         guifg=#AFD787                                   gui=none
hi Operator         ctermfg=150                                     cterm=none
" any other keyword, e.g. 'sub'
hi Keyword          guifg=#AFD787                                   gui=none
hi Keyword          ctermfg=150                                     cterm=none


" Preprocessor Group
" ------------------
" generic preprocessor
hi PreProc          guifg=#AF87D7                                   gui=none
hi PreProc          ctermfg=140                                     cterm=none
" #include
hi Include          guifg=#AF87D7                                   gui=none
hi Include          ctermfg=140                                     cterm=none
" #define
hi Define           guifg=#AF87D7                                   gui=none
hi Define           ctermfg=140                                     cterm=none
" same as define
hi Macro            guifg=#AFD787                                    gui=none
hi Macro            ctermfg=140                                     cterm=none
" #if, #else, #endif
hi PreCondit        guifg=#AF87D7                                   gui=none
hi PreCondit        ctermfg=140                                     cterm=none


" Type Group
" ----------
" int, long, char
hi Type             guifg=#87AFD7                                   gui=none
hi Type             ctermfg=110                                     cterm=none
" static, register, volative
hi StorageClass     guifg=#87AFD7                                   gui=none
hi StorageClass     ctermfg=110                                     cterm=none
" struct, union, enum
hi Structure        guifg=#87AFD7                                   gui=none
hi Structure        ctermfg=110                                     cterm=none
" typedef
hi Typedef          guifg=#87AFD7                                   gui=none
hi Typedef          ctermfg=110                                     cterm=none


" Special Group
" -------------
" any special symbol
hi Special          guifg=#FFD7AF                                   gui=none
hi Special          ctermfg=223                                     cterm=none
" special character in a constant
hi SpecialChar      guifg=#FFD7AF                                   gui=none
hi SpecialChar      ctermfg=223                                     cterm=none
" things you can CTRL-]
hi Tag              guifg=#FFD7AF                                   gui=none
hi Tag              ctermfg=223                                     cterm=none
" character that needs attention
hi Delimiter        guifg=#FFD7AF                                   gui=none
hi Delimiter        ctermfg=223                                     cterm=none
" special things inside a comment
hi SpecialComment   guifg=#FFD7AF                                   gui=none
hi SpecialComment   ctermfg=223                                     cterm=none
" debugging statements
hi Debug            guifg=#FFD7AF           guibg=NONE              gui=none
hi Debug            ctermfg=223             ctermbg=NONE            cterm=none


" Underlined Group
" ----------------
" text that stands out, html links
hi Underlined       guifg=fg                                        gui=underline
hi Underlined       ctermfg=fg                                      cterm=underline


" Ignore Group
" ------------
" left blank, hidden
hi Ignore           guifg=bg
hi Ignore           ctermfg=bg


" Error Group
" -----------
" any erroneous construct
hi Error            guifg=#E85848           guibg=#451E1A           gui=none
hi Error            ctermfg=167             ctermbg=52            cterm=none


" Todo Group
" ----------
" todo, fixme, note, xxx
hi Todo             guifg=#C0A25F           guibg=NONE              gui=underline
hi Todo             ctermfg=228             ctermbg=NONE            cterm=underline


" Spelling
" --------
" word not recognized
hi SpellBad         guisp=#ee0000                                   gui=undercurl
hi SpellBad                                 ctermbg=9               cterm=undercurl
" word not capitalized
hi SpellCap         guisp=#eeee00                                   gui=undercurl
hi SpellCap                                 ctermbg=12              cterm=undercurl
" rare word
hi SpellRare        guisp=#ffa500                                   gui=undercurl
hi SpellRare                                ctermbg=13              cterm=undercurl
" wrong spelling for selected region
hi SpellLocal       guisp=#ffa500                                   gui=undercurl
hi SpellLocal                               ctermbg=14              cterm=undercurl


" Cursor
" ------
" character under the cursor
hi Cursor           guifg=fg                guibg=#0078FF
hi Cursor           ctermfg=bg              ctermbg=153
" like cursor, but used when in IME mode
hi CursorIM         guifg=bg                guibg=#96cdcd
hi CursorIM         ctermfg=bg              ctermbg=116
" cursor column
hi CursorColumn     guifg=NONE              guibg=#202438           gui=none
hi CursorColumn     ctermfg=NONE            ctermbg=236             cterm=none
" cursor line/row
hi CursorLine       gui=NONE                guibg=#202438           gui=none
hi CursorLine       cterm=NONE              ctermbg=236             cterm=none


" Misc
" ----
" directory names and other special names in listings
hi Directory        guifg=#c0e0b0                                   gui=none
hi Directory        ctermfg=151                                     cterm=none
" error messages on the command line
hi ErrorMsg         guifg=#E85848           guibg=#461E1A              gui=none
hi ErrorMsg         ctermfg=196             ctermbg=NONE            cterm=none
" column separating vertically split windows
hi VertSplit        guifg=#777777           guibg=#363946           gui=none
hi VertSplit        ctermfg=242             ctermbg=237             cterm=none
" columns where signs are displayed (used in IDEs)
hi SignColumn       guifg=#9fafaf           guibg=#181818           gui=none
hi SignColumn       ctermfg=145             ctermbg=233             cterm=none
" line numbers
hi LineNr           guifg=#B4D3B1           guibg=#323232
hi LineNr           ctermfg=102             ctermbg=237
" match parenthesis, brackets
hi MatchParen       guifg=#00ff00           guibg=NONE              gui=bold
hi MatchParen       ctermfg=46              ctermbg=NONE            cterm=bold
" the 'more' prompt when output takes more than one line
hi MoreMsg          guifg=#2e8b57                                   gui=none
hi MoreMsg          ctermfg=29                                      cterm=none
" text showing what mode you are in
hi ModeMsg          guifg=fg           guibg=NONE              gui=bold
hi ModeMsg          ctermfg=117             ctermbg=NONE            cterm=none
" the '~' and '@' and showbreak, '>' double wide char doesn't fit on line
hi NonText          guifg=#404040                                   gui=none
hi NonText          ctermfg=235                                     cterm=none
" the hit-enter prompt (show more output) and yes/no questions
hi Question         guifg=fg                                        gui=none
hi Question         ctermfg=fg                                      cterm=none
" meta and special keys used with map, unprintable characters
hi SpecialKey       guifg=#404040
hi SpecialKey       ctermfg=237
" titles for output from :set all, :autocmd, etc
hi Title            guifg=#62bdde                                   gui=none
hi Title            ctermfg=74                                      cterm=none
" warning messages
hi WarningMsg       guifg=#e5786d                                   gui=none
hi WarningMsg       ctermfg=173                                     cterm=none
" current match in the wildmenu completion
hi WildMenu         guifg=#cae682           guibg=#363946           gui=bold,underline
hi WildMenu         ctermfg=16              ctermbg=186             cterm=bold


" Diff
" ----
" added line
hi DiffAdd          guifg=#0000FF           guibg=#201F1F           gui=none
hi DiffAdd          ctermfg=108             ctermbg=22              cterm=none
" changed line
hi DiffChange       guifg=NONE              guibg=#4a343a           gui=none
hi DiffChange       ctermfg=fg              ctermbg=52              cterm=none
" deleted line
hi DiffDelete       guifg=#FF0000           guibg=#3c3631           gui=none
hi DiffDelete       ctermfg=59              ctermbg=58              cterm=none
" changed text within line
hi DiffText         guifg=#f05060           guibg=#4a343a           gui=bold
hi DiffText         ctermfg=203             ctermbg=52             cterm=bold


" Folds
" -----
" line used for closed folds
hi Folded           guifg=#91d6f8           guibg=#363946           gui=none
hi Folded           ctermfg=117             ctermbg=238             cterm=none
" column on side used to indicated open and closed folds
hi FoldColumn       guifg=#91d6f8           guibg=#363946           gui=none
hi FoldColumn       ctermfg=117             ctermbg=238             cterm=none


" Search
" ------
" highlight incremental search text; also highlight text replaced with :s///c
hi IncSearch        guifg=#302F2F guibg=#C0A25F                   gui=none
hi IncSearch        ctermfg=87                                      cterm=reverse
" hlsearch (last search pattern), also used for quickfix
hi Search                                    guibg=#C0A25F          gui=none
hi Search                                    ctermbg=214            cterm=none


" Popup Menu
" ----------
" normal item in popup
hi Pmenu            guifg=#e0e0e0           guibg=#303840           gui=none
hi Pmenu            ctermfg=253             ctermbg=233             cterm=none
" selected item in popup
hi PmenuSel         guifg=#cae682           guibg=#505860           gui=none
hi PmenuSel         ctermfg=186             ctermbg=237             cterm=none
" scrollbar in popup
hi PMenuSbar                                guibg=#505860           gui=none
hi PMenuSbar                                ctermbg=59              cterm=none
" thumb of the scrollbar in the popup
hi PMenuThumb                               guibg=#808890           gui=none
hi PMenuThumb                               ctermbg=102             cterm=none


" Status Line
" -----------
" status line for current window
hi StatusLine       guifg=#508ED8           guibg=#1C2C3F           gui=bold
hi StatusLine       ctermfg=254             ctermbg=237             cterm=bold
" status line for non-current windows
hi StatusLineNC     guifg=#78777f           guibg=#302F2F          gui=none
hi StatusLineNC     ctermfg=244             ctermbg=237             cterm=none


" Tab Lines
" ---------
" tab pages line, not active tab page label
hi TabLine          guifg=#b6bf98           guibg=#363946           gui=none
hi TabLine          ctermfg=244             ctermbg=236             cterm=none
" tab pages line, where there are no labels
hi TabLineFill      guifg=#cfcfaf           guibg=#363946           gui=none
hi TabLineFill      ctermfg=187             ctermbg=236             cterm=none
" tab pages line, active tab page label
hi TabLineSel       guifg=#efefef           guibg=#414658           gui=bold
hi TabLineSel       ctermfg=254             ctermbg=236             cterm=bold


" Visual
" ------
" visual mode selection
hi Visual           guifg=NONE              guibg=#1A2B40
hi Visual           ctermfg=NONE            ctermbg=24
" visual mode selection when vim is not owning the selection (x11 only)
hi VisualNOS        guifg=fg                                        gui=underline
hi VisualNOS        ctermfg=fg                                      cterm=underline
