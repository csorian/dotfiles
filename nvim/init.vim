" init.vim
" user:csorian

" Plugin manager
if ! filereadable(system('echo -n "${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/plug.vim"'))
    echo "Downloading junegunn/vim-plug to manage plugins..."
    silent !mkdir -p ${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/
    silent !curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" > ${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/plug.vim
    autocmd VimEnter * PlugInstall
endif

" Plugins
call plug#begin(system('echo -n "${XDG_CONFIG_HOME:-$HOME/.config}/nvim/plugged"'))
    Plug 'vim-airline/vim-airline'
    Plug 'tpope/vim-surround'
    Plug 'tpope/vim-commentary'
    Plug 'ap/vim-css-color'
    "Plug 'jreybert/vimagit'
call plug#end()

" Airline config
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#show_splits = 0
let g:airline#extensions#tabline#formatter = 'unique_tail'

" Not vi
set nocompatible

" Basics
set background=dark
set t_Co=256
set title
set encoding=utf-8

" Splits
set splitbelow splitright
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

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
set clipboard+=unnamedplus

" Status / Location
set number relativenumber
set ruler
set showmatch
set showcmd

" Fuzzy Find
set path+=**
set wildmenu

" Searching
set incsearch
set hlsearch

" Wrapping
set nowrap

" Autocomplete
set wildmode=longest,list,full

" Disable auto-commenting on newline
autocmd FileType * setlocal formatoption-=c formatoptions-=r formatoptions-=o

" Automatically deletes all trailing whitespace and newlines at end of file on save.
autocmd BufWritePre * %s/\s\+$//e
autocmd BufWritePre * %s/\n\+\%$//e
autocmd BufWritePre *.[ch] %s/\%$/\r/e

" Better highlighting in diff mode
if &diff
    highlight! link DiffText MatchParen
endif

" Spelling
"set spelllang=en_gb
"autocmd BufRead,BufNewFile *.txt,*.text,*.md setlocal spell


""""" FIXME """""

"" Line length and Wrapping
"set textwidth=78
"set wrap
"autocmd BufWinEnter * let w:m2=matchadd('ErrorMsg','\%>78v.\+',-1)
"autocmd BufRead,BufNewFile *.txt,*.md setlocal linebreak
