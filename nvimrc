" General
set number
set ruler
set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%) " A ruler on steroids "
set history=10000
set hidden
set tabstop=2
set softtabstop=2
set shiftwidth=2
set laststatus=2
set hlsearch
set incsearch
set ignorecase
set smartcase
set autoindent
set smartindent
set noshowmode
set showcmd
set title
set cursorline

syntax on
colorscheme delek

let mapleader=","
imap jk <Esc>

nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>

nnoremap j gj
nnoremap k gk

map <leader>y "*y
nnoremap <leader><leader> <c-^>

" Move around splits with <c-hjkl>
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l
nnoremap <c-j> <c-d>
nnoremap <c-k> <c-u>

hi CursorLine   cterm=NONE ctermbg=black ctermfg=white guibg=darkred guifg=white
