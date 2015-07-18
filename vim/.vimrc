call pathogen#infect()
call pathogen#helptags()

filetype indent plugin on
syntax on
set nocompatible

"nerdtree open on vim startup with no arguments
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

map <C-n> :NERDTreeToggle<CR>

set cursorline
noremap <Leader>c :set cursorline!<CR>
set autochdir
set autoindent
set hlsearch
set shiftwidth=2
"set softtabstop=2
set tabstop=2
set expandtab
set smarttab
set wildmenu
set wildmode=list:longest,full
set number
set ignorecase
set smartcase
set laststatus=2
set ruler
set history=500
set statusline=%F%m%r%h%w\ (%{&ff}){%Y}\ [%l,%v][%p%%]

au Filetype python setl ts=2 sw=2 

"to remap F12 to bring us past brackets or parentheses so we can close the line
inoremap <F12> <ESC>%%a

"switch between window splits
map <Tab> <C-W>W:cd %:p:h<CR>:<CR>

"cursor for iTerm2 on OSX
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

"to set the color scheme
"syntax enable
set background=dark 
let g:solarized_termtrans=1
let g:solarized_termcolors=256
se t_Co=16
let g:solarized_contrast="high"
let g:solarized_visibility="high"
colorscheme solarized
