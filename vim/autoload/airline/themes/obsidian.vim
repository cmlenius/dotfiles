if get(g:, 'obsidian_termcolors', 256) == 16
  let s:term_red = 1
  let s:term_green = 2
  let s:term_yellow = 3
  let s:term_blue = 4
  let s:term_purple = 5
  let s:term_white = 7
  let s:term_black = 0
  let s:term_grey = 8
  let s:term_grey_dark = 8
else
  let s:term_red = 167
  let s:term_green = 150
  let s:term_yellow = 178
  let s:term_blue = 110
  let s:term_purple = 140
  let s:term_white = 253
  let s:term_black = 235
  let s:term_grey = 240
  let s:term_grey_dark = 236
endif

let s:gui_red = '#d75f5f'
let s:gui_green = '#afd787'
let s:gui_yellow = '#d7af5f'
let s:gui_blue = '#87afd7'
let s:gui_purple = '#af87d7'
let s:gui_white = '#dadada'
let s:gui_black = '#262626'
let s:gui_grey = '#585858'
let s:gui_grey_dark = '#303030'

let g:airline#themes#obsidian#palette = {}

let g:airline#themes#obsidian#palette.accents = {
      \ 'red': [ s:gui_red, '', s:term_red, '' ]
      \ }

" Normal
let s:Na = [ s:gui_black, s:gui_green, s:term_black, s:term_green ]
let s:Nb = [ s:gui_white, s:gui_grey, s:term_white, s:term_grey ]
let s:Nc = [ s:gui_white, s:gui_grey_dark, s:term_white, s:term_grey_dark ]
let g:airline#themes#obsidian#palette.normal = airline#themes#generate_color_map(s:Na, s:Nb, s:Nc)
let g:airline#themes#obsidian#palette.normal_modified = {
      \ 'airline_c': [ s:gui_blue, s:gui_grey_dark, s:term_blue, s:term_grey_dark, '' ]
      \ }

" Insert
let s:Ia = [ s:gui_black, s:gui_blue, s:term_black, s:term_blue ]
let s:Ib = s:Nb
let s:Ic = s:Nc
let g:airline#themes#obsidian#palette.insert = airline#themes#generate_color_map(s:Ia, s:Ib, s:Ic)
let g:airline#themes#obsidian#palette.insert_modified = g:airline#themes#obsidian#palette.normal_modified

"Visual
let s:Va = [ s:gui_black, s:gui_purple, s:term_black, s:term_purple ]
let s:Vb = s:Nb
let s:Vc = s:Nc
let g:airline#themes#obsidian#palette.visual = airline#themes#generate_color_map(s:Va, s:Vb, s:Vc)
let g:airline#themes#obsidian#palette.visual_modified = g:airline#themes#obsidian#palette.normal_modified

" Replace
let s:Ra = [ s:gui_black, s:gui_red, s:term_black, s:term_red ]
let s:Rb = s:Nb
let s:Rc = s:Nc
let g:airline#themes#obsidian#palette.replace = airline#themes#generate_color_map(s:Ra, s:Rb, s:Rc)
let g:airline#themes#obsidian#palette.replace_modified = g:airline#themes#obsidian#palette.normal_modified

" Inactive / Terminal
let s:IAa = [ s:gui_white, s:gui_grey_dark, s:term_white, s:term_grey_dark ]
let s:IAb = s:IAa
let s:IAc = s:IAa
let g:airline#themes#obsidian#palette.inactive = airline#themes#generate_color_map(s:IAa, s:IAb, s:IAc)
let g:airline#themes#obsidian#palette.inactive_modified = g:airline#themes#obsidian#palette.inactive
let g:airline#themes#obsidian#palette.terminal = g:airline#themes#obsidian#palette.inactive
let g:airline#themes#obsidian#palette.terminal_modified = g:airline#themes#obsidian#palette.inactive_modified
