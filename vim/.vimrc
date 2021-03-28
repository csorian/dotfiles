" ~/.vimrc
" user:csorian

" Colours
set background=dark

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
set number
set ruler
set showmatch
set showcmd

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
