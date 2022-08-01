if $TERM == "xterm-256color"
    set t_Co=256
endif

set nocompatible
filetype off

" P L U G I N S
call plug#begin()
" ----- Aesthetics -----
    Plug 'vim-airline/vim-airline'      "Status Bar

" ----- Language Support -----
    Plug 'ap/vim-css-color'             "CSS colors
    Plug 'jparise/vim-graphql'          "GraphQL
    Plug 'elzr/vim-json'                "JSON
    Plug 'pangloss/vim-javascript'      "Javascript
    Plug 'leafgarland/typescript-vim'   "Typescript
    Plug 'peitalin/vim-jsx-typescript'

" ----- Productivity -----
    Plug 'tpope/vim-fugitive'           "Git
    Plug 'airblade/vim-gitgutter'       "Git Gutter
    Plug 'scrooloose/nerdtree'          "File Tree
    "Plug 'Xuyuanp/nerdtree-git-plugin'  "Git + NERDTree Integration
    Plug 'ctrlpvim/ctrlp.vim'           "FuzzyFile Search

    if has('nvim')
      Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
    endif

" ----- Coc -----
    Plug 'neoclide/coc.nvim', { 'branch': 'release' }
    let g:coc_global_extensions = ['coc-tsserver', 'coc-css', 'coc-html', 'coc-json']
    if isdirectory('./node_modules') && isdirectory('./node_modules/prettier')
      let g:coc_global_extensions += ['coc-prettier']
    endif
    
    if isdirectory('./node_modules') && isdirectory('./node_modules/eslint')
      let g:coc_global_extensions += ['coc-eslint']
    endif
call plug#end()

" C O N F I G
    colorscheme obsidian
    filetype plugin indent on
    syntax on

    autocmd BufNewFile,BufRead *.css setlocal filetype=css
    autocmd BufNewFile,BufRead *.html setlocal filetype=html
    autocmd BufNewFile,BufRead *.js setlocal filetype=javascript
    autocmd BufNewFile,BufRead *.ts setlocal filetype=typescript
    autocmd BufNewFile,BufRead *.tsx,*.jsx setlocal filetype=typescriptreact

    autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
    autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear

" E X T R A
    set autoindent
    set backspace=indent,eol,start
    set expandtab
    set hlsearch
    set ignorecase
    set laststatus=2
    set modelines=1
    set number norelativenumber
    set nocompatible
    set nonumber
    set nowrap
    set shiftwidth=2
    set signcolumn=yes
    set tabstop=4
    highlight clear SignColumn
     
    let mapleader = "\<space>"
    nnoremap <leader>sr :set relativenumber!<cr>
    nnoremap <leader>sh :set hlsearch!<cr>
    nnoremap <leader>sn :set number!<cr>

" ----- Key Mappings -----"
    " Quick edit/reload vimrc
    nnoremap <leader>ev :vsplit ~/.vimrc<cr>
    nnoremap <leader>sv :source $MYVIMRC<cr>

    " Editing
    nnoremap <leader>o o<Space><ESC>k
    nnoremap <leader>O O<Space><ESC>j

    " Navigation
    noremap <End> $
    noremap <PageDown> 0
    noremap <PageUp> %
    noremap <Home> ^

   " Registers
    noremap <leader>c  "*y
    noremap <leader>y1 "1y
    noremap <leader>y2 "2y
    noremap <leader>y3 "3y
    noremap <leader>y4 "4y
    noremap <leader>y5 "5y
    noremap <leader>p  "*p
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
    nnoremap <leader>h   <C-w>h
    nnoremap <leader>j   <C-w>j
    nnoremap <leader>k   <C-w>k
    nnoremap <leader>l   <C-w>l
    nnoremap <C-j>       :bp<CR>
    nnoremap <C-k>       :bn<CR>
    nnoremap <C-h>       :tabnext<CR>
    nnoremap <C-l>       :tabprev<CR>
    nnoremap <leader>bd  :bd<CR>
    nnoremap <leader>td  :tabclose<CR>
    nnoremap <leader>wd  <C-w>q

" ----- NERDTree -----
    nnoremap <leader>n :NERDTreeToggle<CR>

" ----- git-gutter -----
    let g:gitgutter_sign_added = '+'
    let g:gitgutter_sign_modified = '*'
    let g:gitgutter_sign_removed = '-'
    let g:gitgutter_sign_removed_first_line = '-'
    let g:gitgutter_sign_modified_removed = '-'

" ----- vim-airline ----- 
    let g:airline_extensions = ['branch', 'tabline']
    let g:airline_section_b = '%{bufnr("%")}'
    let g:airline_section_x = '%{fugitive#statusline()}'
    let g:airline_section_y = '%3l/%L || %2c'
    let g:airline_section_z = '%p%%'
    let g:airline#extensions#tabline#switch_buffers_and_tabs = 0
    let g:airline#extensions#tabline#fnamemod = ':t'

" ----- ctrlp -----
    let g:ctrlp_map = '<C-p>'
    let g:ctrlp_working_path_mode = 'c'
    set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
    set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows
    let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

" ----- coc.nvim -----
set hidden
set nobackup
set nowritebackup
set cmdheight=2
set updatetime=300
set shortmess+=c

" Hot Keys
nmap <leader>f :CocCommand prettier.formatFile<CR>
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
 
" Use tab for trigger completion with characters ahead and navigate.
inoremap <silent><expr> <TAB> pumvisible() ? "\<C-n>" : <SID>check_back_space() ? "\<TAB>" : coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <cr> to confirm completion
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif
