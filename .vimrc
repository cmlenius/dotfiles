if $TERM == "xterm-256color"
    set t_Co=256
endif

set nocompatible              
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

" P L U G I N S
call vundle#begin()
    Plugin 'VundleVim/Vundle.vim'

" ----- Aesthetics ----- 
    Plugin 'ap/vim-css-color'
    Plugin 'vim-airline/vim-airline'
    Plugin 'vim-airline/vim-airline-themes'
    "Plugin 'itchyny/lightline.vim'
    "Plugin 'ap/vim-buftabline'

" ----- Language Support -----
    Plugin 'leafgarland/typescript-vim'
    Plugin 'wlangstroth/vim-racket'
    Plugin 'octol/vim-cpp-enhanced-highlight'
    Plugin 'pangloss/vim-javascript'
    Plugin 'elzr/vim-json'

" ----- Productivity -----
    Plugin 'tpope/vim-fugitive'                "Git
    Plugin 'scrooloose/nerdtree'               "File Tree
    Plugin 'ctrlpvim/ctrlp.vim'        	       "FuzzyFile Search
call vundle#end() 


" C O N F I G
    filetype plugin indent on    
    syntax on
    "colorscheme orbital 
    colorscheme my_colorscheme 

    autocmd BufNewFile,BufRead *.ts setlocal filetype=typescript
    autocmd BufNewFile,BufReadPost *.rkt setlocal filetype=racket
    autocmd BufNewFile,BufReadPost *.ml setlocal filetype=ocaml

" E X T R A 
    set tabstop=4
    set shiftwidth=4
    set expandtab
    set backspace=indent,eol,start
    "set nowrap
    set autoindent
    set ignorecase
    set hlsearch
    set modelines=1
    set number norelativenumber
    let mapleader = "\<space>"
    nnoremap <leader>r :set relativenumber!<cr>
    nnoremap <leader>sh :set hlsearch!<cr>

" ----- Key Mappings -----"
    " Quick edit/reload vimrc
    nnoremap <leader>ev :vsplit $MYVIMRC<cr>
    nnoremap <leader>sv :source $MYVIMRC<cr>

    " Editing
    nnoremap <leader>o o<Space><ESC>k
    nnoremap <leader>O O<Space><ESC>j
    nnoremap <leader>pp o<Space><ESC>P
    
    " Navigation
    noremap <End> 0
    noremap <PageDown> ^
    noremap <PageUp> $
    noremap <Home> %
     
   " Registers
    noremap <leader>y1 "1y
    noremap <leader>y2 "2y
    noremap <leader>y3 "3y
    noremap <leader>y4 "4y
    noremap <leader>y5 "5y
    noremap <leader>p1 "1p
    noremap <leader>p2 "2p
    noremap <leader>p3 "3p
    noremap <leader>p4 "4p
    noremap <leader>p5 "5p

    " Surround
    nnoremap <leader>" viW<esc>a"<esc>Bi"<esc>
    nnoremap <leader>' viW<esc>a'<esc>Bi'<esc>
    nnoremap <leader>( viW<esc>a)<esc>Bi(<esc>
    nnoremap <leader>[ viW<esc>a]<esc>Bi[<esc>
    nnoremap <leader>{ viW<esc>a}<esc>Bi{<esc>
    nnoremap <leader>< viW<esc>a><esc>Bi<<esc>
  
    " Window Buffer Tab nagivation 
    nnoremap <leader>sp  :sp<CR>
    nnoremap <leader>vsp :vsp<CR>
    nnoremap <leader>h <C-w>h 
    nnoremap <leader>j <C-w>j
    nnoremap <leader>k <C-w>k
    nnoremap <leader>l <C-w>l
    nnoremap <C-j> :bp<CR>
    nnoremap <C-k> :bn<CR> 
    nnoremap <C-h> :tabnext<CR> 
    nnoremap <C-l> :tabprev<CR> 
    nnoremap <leader>db :bd<CR>
    nnoremap <leader>dt :tabclose<CR>
    nnoremap <leader>dw <C-w>q

" ----- NERDTree -----
    nnoremap <leader>n :NERDTreeToggle<CR>

" ----- vim-airline -----
    let g:airline_theme='obsidian'
    let g:airline_extensions = ['branch', 'tabline']
    let g:airline_section_b = '%{bufnr("%")}'
    let g:airline_section_x = '%{fugitive#statusline()}'
    let g:airline_section_y = '%3l/%L || %2c'
    let g:airline_section_z = '%p%%'
    let g:airline#extensions#tabline#switch_buffers_and_tabs = 0
    let g:airline#extensions#tabline#fnamemod = ':t'

" ----- vim-lightline -----
"    let g:lightline = {
"      \   'colorscheme': 'Dracula',
"      \   'active': {
"      \     'left':[ [ 'mode', 'paste' ],
"      \              [ 'gitbranch', 'readonly', 'filename', 'modified' ]
"      \     ]
"      \   },
"      \   'component': {
"      \     'lineinfo': '%3l:%-2v',
"      \   },
"      \   'component_function': {
"      \     'gitbranch': 'fugitive#head',
"      \   }
"      \ }
"    let g:lightline.tabline = {
"      \   'left': [ ['tabs'] ],
"      \   'right': [ ['close'] ]
"      \ }
"    set laststatus=2   " Show statusline
"    set showtabline=2  " Show tabline
"    set guioptions-=e  " Don't use GUI

" ----- vim-numbertoggle -----
" ----- ctrlp -----
    let g:ctrlp_map = '<C-p>'
    let g:ctrlp_working_path_mode = 'c'
    "nnoremap <leader>pp :CtrlP<cr>
    "nnoremap <leader>pb :CtrlPBuffer<cr>

    set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
    set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows
    let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
    let g:ctrlp_custom_ignore = {
      \ 'dir':  '\v[\/]\.(git|hg|svn)$',
      \ 'file': '\v\.(exe|so|dll)$'
      \ }


