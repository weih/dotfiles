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
set stl=%f\ %m\ Line:%l/%L[%p%%]\ Col:%v\ Buf:#%n\ [%b][0x%B]
set expandtab
set showtabline=2
set hlsearch
set incsearch
set ignorecase
set smartcase
set autoindent
set smartindent
set noshowmode
set showcmd
set backspace=indent,eol,start
set title
set cursorline
set scrolloff=8
set wildmode=longest,list
set wildmenu
set splitbelow
set splitright
set foldmethod=syntax
set foldnestmax=6
set nofoldenable

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

nmap <leader>v :tabedit $MYVIMRC<CR>

cnoremap %% <C-R>=fnameescape(expand('%:h')).'/'<cr>
map <leader>ew :e %%
map <leader>es :sp %%
map <leader>ev :vsp %%
map <leader>et :tabe %%

nmap <leader>" ci"
nmap <leader>' ci'
imap <c-l> binding.pry
nnoremap Q <nop>
nnoremap <space> :nohlsearch<cr><kDivide>

nmap <c-s> :w<CR>
imap <c-s> <Esc>:w<CR>a
imap <c-s> <Esc><c-s>

" sudo
cmap w!! w !sudo tee % >/dev/null

autocmd bufnewfile,bufreadpost *.coffee setl foldmethod=indent nofoldenable
autocmd bufnewfile,bufreadpost *.erb setl foldmethod=indent nofoldenable

hi CursorLine   cterm=NONE ctermbg=black ctermfg=white guibg=darkred guifg=white
hi Folded guifg=#986DB2 ctermfg=104 ctermbg=black
