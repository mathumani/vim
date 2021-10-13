" disable vi compatibility
set nocompatible

" Helps force plugins to load correctly when it is turned on below
filetype off

" Define leader
let mapleader = ","

" Encoding
set encoding=utf-8

" Text folding
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview


" enable syntax and plugins for netrw
syntax enable
filetype plugin on
syntax on

" For security
set modelines=0

" Show file stats
set ruler

" Blink cursor on error of beeping 
set visualbell

" finding files
" search down into subfolders
" provide tab-completion for all-related tasks
set path+=**

" display all matching files when we tab complete
set wildmenu

" show number and relative number
set number relativenumber

" proper tab configuration and whitespace
set wrap
set textwidth=79
set formatoptions=tcqrn1
set tabstop=2
set shiftwidth=2
set softtabstop=2
set smarttab
set expandtab
set noshiftround

" Cursor motion
set scrolloff=3
set backspace=indent,eol,start
set matchpairs+=<:>

" Allow hidden buffers
set hidden

" MOve up/down editor lines
noremap j gj
noremap k gk

" Rendering
set ttyfast

" display the status line
set laststatus=2

" Last Line
set showmode
set showcmd

" Searching
nnoremap / /\v
vnoremap / /\v
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch
map <leader><space> :let @/=''<cr> " clear search

" vertical resize
map <C-l> :vertical resize +2<CR>
map <C-h> :vertical resize -2<CR>
map <C-j> :resize +2<CR>
map <C-k> :resize -2<CR>

" Visualize tabas and newlines
set listchars=tab:▸\ ,eol:¬
map <leader>l :set list!<CR> " Toggle tabs and EOL

" enable highlight of current line
set cursorline

" colortheme for proper display of comment line
set t_co=256
set background=dark
if (has("termgguicolors"))
    set termguicolors
endif
let base16colorspace=256
colorscheme desert


"========================== Start of plugin ==================================
" load required vim at specific location
call plug#begin('~/.vim/plugged')

" Vim emmit plugin
Plug 'mattn/emmet-vim'

" Preview color code inside vim
Plug 'ap/vim-css-color'

" NerdTree
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }

" Any valid git URL is allowed
Plug 'https://github.com/morhetz/gruvbox.git'

" Yamil Plugin
Plug 'stephpy/vim-yaml'

" Fancy status bar and tabline for vim
Plug 'https://github.com/vim-airline/vim-airline.git'
Plug 'vim-airline/vim-airline-themes'

" show a git diff in the sign column
Plug 'https://github.com/airblade/vim-gitgutter.git'

" VIM theme
Plug 'kaicataldo/material.vim', { 'branch': 'main' }

" Powerline plugin
Plug 'powerline/fonts'

" Allow vim to manage git repository
Plug 'tpope/vim-fugitive'

" Collection of language pack
Plug 'sheerun/vim-polyglot'

" Color scheme
Plug 'https://github.com/morhetz/gruvbox.git'
Plug 'phanviet/vim-monokai-pro'

" Initilize plugin system
call plug#end()
"============================ End of plugin ==================================

" -- EMMET CONFIG
"  redefine Trigger key
let g:user_emmet_leader_key=','

" NerdTree configuration
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" set code limit
set colorcolumn=81
highlight ColorColumn ctermbg=238

" Airline status configuration
"let g:airline_section_b = '%{strftime("%c")}'

" Enable list of buffers
let g:airline#extensions#tabline#enabled = 1

" ~/full/path-to/file-name.js
 let g:airline#extensions#tabline#formatter = 'default'  " f/p/file-name.js
 let g:airline#extensions#tabline#formatter = 'jsformatter' " path-to/f
 let g:airline#extensions#tabline#formatter = 'unique_tail' " file-name.js
 let g:airline#extensions#tabline#formatter = 'unique_tail_improved' "f/p/file-name.js

" air-line
let g:airline_powerline_fonts = 1

" powerline fonts tech and definition for airline good looks
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
 let g:airline_left_sep = '»'
 let g:airline_left_sep = '▶'
 let g:airline_right_sep = '«'
 let g:airline_right_sep = '◀'
 let g:airline_symbols.linenr = '␊'
 let g:airline_symbols.linenr = '␤'
 let g:airline_symbols.linenr = '¶'
 let g:airline_symbols.branch = '⎇'
 let g:airline_symbols.paste = 'ρ'
 let g:airline_symbols.paste = 'Þ'
 let g:airline_symbols.paste = '∥'
 let g:airline_symbols.whitespace = 'Ξ'

" air-line symbos
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.dirty='⚡'

" Monokai line highlighter
 let g:lightline = {
 \ 'colorscheme': 'monokai_pro',
 \ }

