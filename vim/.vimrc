" ~/.vimrc
" user:csorian

" Not vi
set nocompatible

" Colours
set background=dark
set t_Co=256

" Airline config
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#show_splits = 0
let g:airline#extensions#tabline#formatter = 'unique_tail'

" Syntax highlighting
filetype plugin on
syntax on

" Indentation and Tabs
filetype indent on
set expandtab
set shiftwidth=4
set softtabstop=4
set smartindent

" X Clipboard
set clipboard=unnamedplus

" Status / Location
set number relativenumber
set ruler
set showmatch
set showcmd

" Fuzzy Find
set path+=**
set wildmenu

" Spelling
"set spelllang=en_gb
"autocmd BufRead,BufNewFile *.txt,*.text,*.md setlocal spell

" Searching
set incsearch
set hlsearch

" Wrapping
set nowrap

""""" FIXME """""

"" Line length and Wrapping
"set textwidth=78
"set wrap
"autocmd BufWinEnter * let w:m2=matchadd('ErrorMsg','\%>78v.\+',-1)
"autocmd BufRead,BufNewFile *.txt,*.md setlocal linebreak
