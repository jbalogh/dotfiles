" use vim settings
set background=dark
set nocompatible
set ic
set incsearch
set backspace=indent,eol,start
set showcmd " show uncompleted command
set showmatch " show matching bracket
set tw=80 " text width
set title
set gfn=Courier\ New\ 12

syntax enable

" 256 colors
set t_Co=256

" yank to end of line
map Y y$

"source /home/jeff/.vim/vimrc
set tags=tags;/

" only use status line to split window.
set laststatus=0

colorscheme asu1dark
"highlight Normal ctermbg=black ctermfg=white

map ,t :tag <Space> 
:nmap <Space> <PageDown>

:nmap <silent> <C-n> <Esc>:silent noh<CR>

"" copy/paste
map ,c "+y
map ,p "+gP

set foldmethod=marker

""" Python settings
map <F8> Oimport pdb; pdb.set_trace() #BREAK<Esc>
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab
set autoindent
