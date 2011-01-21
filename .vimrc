" autochdir breaks vcs.
"set autochdir                  " Find files next to the current buffer
set autoindent
set background=dark
set backspace=indent,eol,start " Smart backspacing
set expandtab
set foldmethod=marker          " 3 curly braces
set hidden                     " Manage multiple buffers
set history=1000               " Long history
set ignorecase                 " Ignore case in search
set incsearch                  " Incremental search
set laststatus=1               " Only use status line to split window.
set mousehide                  " Hide the pointer while typing
set nocompatible               " Use vim settings
set pastetoggle=<F2>
set ruler                      " Where am I?
set scrolloff=3                " More context around cursor
set shiftwidth=4
set shortmess=atI              " Avoid prompts
set showcmd                    " Show uncompleted commands
set showmatch                  " Show matching bracket
set smartcase                  " Do the right thing
set smarttab
set t_Co=256                   " 256 colors
set tabstop=4
set tags=tags;/                " Where to find tags
set title                      " set terminal title to filename
set tw=79                      " Text width
set hlsearch                   " Highlight search
set modeline                   " Pay attention to the modeline
set cursorline                 " Highlight the cursor line
set formatoptions=croql2

set undofile
set undodir=~/.vim/undo

"" FuzzyFinder Textmate
"" map <leader>t :FuzzyFinderTextMate<CR>
"" let g:fuzzy_ignore="*.pyc,*.png,*.jpg,*.gif,*.ico,*.svg"

"" Better command completion
set wildmenu
set wildmode=list:longest,full
"" Ignore these files when completing names and in Explorer
set wildignore=.svn,CVS,.git,*.o,*.a,*.class,*.mo,*.la,*.so,*.obj,*.swp,*.jpg,*.png,*.xpm,*.gif,*.pyc,vendor/**,locale/**,tmp/**

syntax enable
colorscheme molokai
"colorscheme vibrantink

"" Use % to match tags, if/else
runtime macros/matchit.vim

""" Keys

inoremap jk <ESC>
inoremap kj <ESC>

"" Damn you F1
map <F1> <Esc>
imap <F1> <Esc>

"" Yank to end of line
map Y y$

"" H/L was top/bottom of screen
map H ^
map L $

"" Page like a browser.
:nmap <Space> <PageDown>

"" Clear search highlight
:nmap <silent> <C-n> <Esc>:silent noh<CR>

"" Copy/paste
map ,c "+y
map ,p "+gP

""" Python
map <F8> Oimport pdb; pdb.set_trace()<Esc>

"" Replace `# xxx` with def test_xxx(self):
map <F9>:s/# \(.*\)$/def test_\1(self):\r        pass\r/<Esc>

"" Remove trailing whitespace
autocmd BufWritePre * :%s/\s\+$//e

""" PHP
autocmd FileType php set tw=0

autocmd FileType htmldjango setlocal sw=2

autocmd BufRead *.rs set ft=c
autocmd BufRead *.html setlocal ft=htmljinja sw=2 tw=100

""" Sphinx
let @h = "yypVr"

filetype plugin indent on

""" Jump to the last known position in a file after opening.
:au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif

let g:yankring_replace_n_pkey = '<m-p>'
let g:yankring_replace_n_nkey = '<m-n>'
