filetype on
filetype plugin on
syntax on
"
let mapleader = "\<space>"
set nowrap
set nocompatible              " be iMproved, required
set backspace=indent,eol,start
colorscheme slate
set showcmd
set background=dark
set nu
set cursorline
set relativenumber
set mouse=a
set encoding=utf-8
set foldmethod=indent
set foldlevel=9999
set foldminlines=5
set nobackup
set signcolumn=yes
set clipboard+=unnamedplus
nmap <A-d> <Cmd>Bdelete<CR>

" NORMAL MODE
nmap <c-s> xi
nmap S :w<CR>
nmap Q :q<CR>
nmap ; :
" switch window
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
nnoremap <silent><C-n> :noh<CR>
nnoremap R <Cmd>source $MYVIMRC<CR>

" split
nmap sl :set splitright<CR>:vsplit<CR>
nmap sh :set nosplitright<CR>:vsplit<CR>
nmap sk :set nosplitbelow<CR>:split<CR>
nmap sj :set splitbelow<CR>:split<CR>
nmap tu :tabe<CR>
nmap tl :+tabnext<CR>
nmap th :-tabnext<CR>
nnoremap <A-h> <Cmd>bN<CR>
nnoremap <A-l> <Cmd>bn<CR>
nnoremap <S-tab> <Cmd>bN<CR>
nnoremap <tab> <Cmd>bn<CR>
map H ^
map L $
nmap yl y$
nmap yh y^
nmap dl d$
nnoremap ZZ :wa<CR>:qa<CR>

nmap <silent><leader>n <Cmd>noh<CR>

" INSERT MODE
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>

map <up> :res +3<CR>
map <down> :res -3<CR>
map <left> :vertical resize -3<CR>
map <right> :vertical resize +3<CR>
map J <nop>
