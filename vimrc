set nocompatible

filetype off                   " required!
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'
"Bundle 'altercation/vim-colors-solarized'
Bundle 'kien/ctrlp.vim'
"Bundle 'scrooloose/nerdcommenter'
Bundle 'tomtom/tcomment_vim'
"Bundle 'Lokaltog/vim-easymotion'
Bundle 'tpope/vim-surround'
Bundle 'flazz/vim-colorschemes'
Bundle 'scrooloose/nerdtree'
"Bundle 'jistr/vim-nerdtree-tabs'
"Bundle 'ervandew/supertab'
"Bundle 'msanders/snipmate.vim'
"Bundle 'Shougo/neocomplcache.vim'
"Bundle 'Shougo/neosnippet'
"Bundle 'honza/vim-snippets'
"Bundle 'Townk/vim-autoclose'
Bundle 'godlygeek/tabular'
Bundle 'junegunn/vim-easy-align'
Bundle 'majutsushi/tagbar'
" Bundle 'scrooloose/syntastic'
Bundle 'tpope/vim-unimpaired'
"Bundle 'tpope/vim-repeat'
Bundle 'mileszs/ack.vim'
"Bundle 'nathanaelkane/vim-indent-guides'
"Bundle 'Yggdroot/indentLine'
"Bundle 'airblade/vim-gitgutter'
"Bundle 'tpope/vim-haml'
Bundle 'tpope/vim-fugitive'
"Bundle 'Lokaltog/powerline', {'rtp':'/powerline/bindings/vim'}
Bundle 'ap/vim-css-color'
"Bundle 'jiangmiao/auto-pairs'
"Bundle 'xolox/vim-misc'
"Bundle 'xolox/vim-session'
"Bundle 'myusuf3/numbers.vim'
"Bundle 'tpope/vim-obsession'
"Bundle 'plasticboy/vim-markdown'
Bundle 'tpope/vim-markdown'
"Bundle 'terryma/vim-multiple-cursors'
" Bundle 'Valloric/YouCompleteMe'
Bundle 'vim-ruby/vim-ruby'
Bundle 'thoughtbot/vim-rspec'
" Bundle 'wincent/Command-T'
Bundle 'gregsexton/MatchTag'
"Bundle 'tpope/vim-endwise'
"Bundle 'SirVer/ultisnips'
Bundle 'vim-scripts/ZoomWin'
"Bundle 'Trevoke/ultisnips-rspec'
"Bundle 'suan/vim-instant-markdown'
"Bundle 'joeytwiddle/sexy_scroller.vim'
"Bundle 't9md/vim-ruby-xmpfilter'
"Bundle 'Rykka/colorv.vim'
"Bundle 'mattn/webapi-vim'
Bundle 'kana/vim-textobj-user'
Bundle 'nelstrom/vim-textobj-rubyblock'
"Bundle 'Spaceghost/vim-matchit'
"Bundle 'ecomba/vim-ruby-refactoring'
Bundle 'elixir-lang/vim-elixir'
Bundle 'roman/golden-ratio'
"Bundle 'c9s/colorselector.vim'

filetype plugin indent on     " required!

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
" Broken down into easily includeable segments
set statusline=%<%f\                     " Filename
set statusline+=%w%h%m%r                 " Options
set statusline+=%{fugitive#statusline()} " Git Hotness
set statusline+=\ [%{&ff}/%Y]            " Filetype
set statusline+=\ [%{getcwd()}]          " Current dir
set statusline+=%=%-14.(%l,%c%V%)\ %p%%  " Right aligned file nav info
set expandtab
set hlsearch
set incsearch
set ignorecase
set smartcase
"set nowrapscan
set autoindent
set smartindent
set noshowmode
"set cindent
set showcmd
set backspace=indent,eol,start
set title
set cursorline
" set cmdheight=2
set scrolloff=8
set wildmode=longest,list
set wildmenu
set splitbelow
set splitright
set spell
set dictionary=/usr/share/dict/words
set hls!
" Prevent Vim from clobbering the scrollback buffer. See
" http://www.shallowsky.com/linux/noaltscreen.html
set t_ti= t_te=
" Store temporary files in a central spot
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
" set list
" set listchars=tab:›\ ,trail:•,extends:#,nbsp:. " Highlight problematic whitespace "

syntax enable
syntax on

" Colorscheme
set background=dark
set t_Co=256 " 256 colors
colorscheme jellybeans
hi clear SpellBad
hi clear SpellLocal
hi clear SpellCap
hi clear SpellRare

" Folding
set foldmethod=syntax
set foldnestmax=6
set nofoldenable
hi Folded ctermfg=216 ctermbg=0

" vim-textobj-rubyblock
runtime macros/matchit.vim


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Bindings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
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
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

nnoremap <cr> <kDivide>

nmap <leader>v :tabedit $MYVIMRC<CR>

cnoremap %% <C-R>=fnameescape(expand('%:h')).'/'<cr>
map <leader>ew :e %%
map <leader>es :sp %%
map <leader>ev :vsp %%
map <leader>et :tabe %%

nmap <leader>" ci"
nmap <leader>' ci'
imap <c-l> <space>=><space>
nnoremap Q <nop>

:nmap <c-s> :w<CR>
:imap <c-s> <Esc>:w<CR>a
:imap <c-s> <Esc><c-s>

" noremap <c-e> <END>
" inoremap <c-e> <END>
" noremap <c-a> <HOME>
" inoremap <c-a> <HOME>
" noremap <d-j> <c-d>
" noremap <d-k> <c-u>
" "Toggle comments
" map <d-/> gcc

" nmap <c-o> :CtrlPBuffer<CR>
nnoremap <leader>ac :Ack <c-r><c-w><CR>
nnoremap <leader>ak :Ack<space>

" ctags stuff
nnoremap <leader>gt :!ctags -R .<cr><cr>
nnoremap <leader>ct :tag<space>

nmap <F8> :TagbarToggle<CR>
" nmap <F5> :SyntasticCheck<CR>
nmap <F12> :w<CR>:source %<CR>:BundleInstall<CR>
" nmap <c-b> :w<CR>:!ruby %<CR>
noremap <leader>t :w\|:!rake<cr>
noremap <leader>r :w\|:!ruby %<cr>

:nnoremap <leader>m :silent !open -a Marked.app '%:p'<cr>

" Toggle for paste from other program
nnoremap <F3> :set invpaste paste?<CR>
imap <F3> <C-O>:set invpaste paste?<CR>
set pastetoggle=<F3>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" MULTIPURPOSE TAB KEY
" Indent if we're at the beginning of a line. Else, do completion.
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! InsertTabWrapper()
    let col = col('.') - 1
    if !col || getline('.')[col - 1] !~ '\k'
        return "\<tab>"
    else
        return "\<c-p>"
    endif
endfunction
inoremap <tab> <c-r>=InsertTabWrapper()<cr>
inoremap <s-tab> <c-n>

" nmap <buffer> <F5> <Plug>(xmpfilter-run)
" xmap <buffer> <F5> <Plug>(xmpfilter-run)
" imap <buffer> <F5> <Plug>(xmpfilter-run)
" 
" nmap <buffer> <F4> <Plug>(xmpfilter-mark)
" xmap <buffer> <F4> <Plug>(xmpfilter-mark)
" imap <buffer> <F4> <Plug>(xmpfilter-mark)

" sudo
cmap w!! w !sudo tee % >/dev/null

let g:Powerline_symbols = 'fancy'

    " NerdTree {
        map <F2> :NERDTreeToggle<CR>:NERDTreeMirror<CR>
        map <leader>e :NERDTreeFind<CR>
        nmap <leader>nt :NERDTreeFind<CR>

        let NERDTreeShowBookmarks=1
        let NERDTreeIgnore=['\.pyc', '\~$', '\.swo$', '\.swp$', '\.git', '\.hg', '\.svn', '\.bzr']
        let NERDTreeChDirMode=0
        let NERDTreeQuitOnOpen=1
        let NERDTreeMouseMode=2
        let NERDTreeShowHidden=1
        let NERDTreeKeepTreeInNewTab=1
        let g:nerdtree_tabs_open_on_gui_startup=0
        let NERDTreeWinSize=40
    " }

    " ctrlp {
        let g:ctrlp_working_path_mode = 'ra'
        " let g:ctrlp_user_command = 'find %s -type f'       " MacOSX/Linux
        nnoremap <silent> <D-t> :CtrlP<CR>
        nnoremap <silent> <D-r> :CtrlPMRU<CR>
        let g:ctrlp_custom_ignore = {
            \ 'dir':  '\.git$\|\.hg$\|\.svn$',
            \ 'file': '\.exe$\|\.so$\|\.dll$\|\.pyc$' }

        " On Windows use "dir" as fallback command.
        if has('win32') || has('win64')
            let g:ctrlp_user_command = {
                \ 'types': {
                    \ 1: ['.git', 'cd %s && git ls-files . --cached --exclude-standard --others'],
                    \ 2: ['.hg', 'hg --cwd %s locate -I .'],
                \ },
                \ 'fallback': 'dir %s /-n /b /s /a-d'
            \ }
        else
            let g:ctrlp_user_command = {
                \ 'types': {
                    \ 1: ['.git', 'cd %s && git ls-files . --cached --exclude-standard --others'],
                    \ 2: ['.hg', 'hg --cwd %s locate -I .'],
                \ },
                \ 'fallback': 'find %s -type f'
            \ }
        endif
    "}
    "
    " indent_guides {
        "if !exists('g:spf13_no_indent_guides_autocolor')
            let g:indent_guides_auto_colors = 1
        "else
            " For some colorschemes, autocolor will not work (eg: 'desert', 'ir_black')
        "    autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=#212121 ctermbg=3
        "    autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=#404040 ctermbg=4
        "endif
        let g:indent_guides_start_level = 2
        let g:indent_guides_guide_size = 1
        let g:indent_guides_enable_on_vim_startup = 1
    " }
    " Tabularize {
        nmap <Leader>a& :Tabularize /&<CR>
        vmap <Leader>a& :Tabularize /&<CR>
        nmap <Leader>a= :Tabularize /=<CR>
        vmap <Leader>a= :Tabularize /=<CR>
        nmap <Leader>a: :Tabularize /:<CR>
        vmap <Leader>a: :Tabularize /:<CR>
        nmap <Leader>a:: :Tabularize /:\zs<CR>
        vmap <Leader>a:: :Tabularize /:\zs<CR>
        nmap <Leader>a, :Tabularize /,<CR>
        vmap <Leader>a, :Tabularize /,<CR>
        nmap <Leader>a<Bar> :Tabularize /<Bar><CR>
        vmap <Leader>a<Bar> :Tabularize /<Bar><CR>
    " }
    " ack.vim {
        let g:ackprg = 'ag --nogroup --nocolor --column'
    " }
    " indentLine {
        let g:indentLine_color_term = 239
    " }
    " vim-markdown {
        let g:vim_markdown_folding_disabled=1
    " }
    " Command-T {
      " if has("gui_macvim")
      "     macmenu &File.New\ Tab key=<nop>
      "     map <D-t> :CommandT<CR>
      " endif
    " }
    " YouCompleteMe {
        let g:ycm_key_list_select_completion = ['<Down>']
    " }
    " UltiSnips {
        let g:UltiSnipsExpandTrigger="<tab>"
        let g:UltiSnipsJumpForwardTrigger="<tab>"
        let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
        let g:UltiSnipsDontReverseSearchPath="1"
        "let g:UltiSnipsSnippetDirectories=["~/.vim/bundle/vim-snippets"]
    " }

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" RENAME CURRENT FILE
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! RenameFile()
    let old_name = expand('%')
    let new_name = input('New file name: ', expand('%'), 'file')
    if new_name != '' && new_name != old_name
        exec ':saveas ' . new_name
        exec ':silent !rm ' . old_name
        redraw!
    endif
endfunction
map <leader>n :call RenameFile()<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NeocompleteCache
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" "Note: This option must set it in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!
" " Disable AutoComplPop.
" let g:acp_enableAtStartup = 0
" " Use neocomplcache.
" let g:neocomplcache_enable_at_startup = 1
" " Use smartcase.
" let g:neocomplcache_enable_smart_case = 1
" " Set minimum syntax keyword length.
" let g:neocomplcache_min_syntax_length = 3
" let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'
" 
" " Enable heavy features.
" " Use camel case completion.
" "let g:neocomplcache_enable_camel_case_completion = 1
" " Use underbar completion.
" "let g:neocomplcache_enable_underbar_completion = 1
" 
" " Define dictionary.
" let g:neocomplcache_dictionary_filetype_lists = {
"     \ 'default' : '',
"     \ 'vimshell' : $HOME.'/.vimshell_hist',
"     \ 'scheme' : $HOME.'/.gosh_completions'
"         \ }
" 
" " Define keyword.
" if !exists('g:neocomplcache_keyword_patterns')
"     let g:neocomplcache_keyword_patterns = {}
" endif
" let g:neocomplcache_keyword_patterns['default'] = '\h\w*'
" 
" " Plugin key-mappings.
" inoremap <expr><C-g>     neocomplcache#undo_completion()
" inoremap <expr><C-l>     neocomplcache#complete_common_string()
" 
" " Recommended key-mappings.
" " <CR>: close popup and save indent.
" inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
" function! s:my_cr_function()
"   return neocomplcache#smart_close_popup() . "\<CR>"
"   " For no inserting <CR> key.
"   "return pumvisible() ? neocomplcache#close_popup() : "\<CR>"
" endfunction
" " <TAB>: completion.
" inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" " <C-h>, <BS>: close popup and delete backword char.
" inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
" inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
" inoremap <expr><C-y>  neocomplcache#close_popup()
" inoremap <expr><C-e>  neocomplcache#cancel_popup()
" " Close popup by <Space>.
" "inoremap <expr><Space> pumvisible() ? neocomplcache#close_popup() : "\<Space>"
" 
" " For cursor moving in insert mode(Not recommended)
" "inoremap <expr><Left>  neocomplcache#close_popup() . "\<Left>"
" "inoremap <expr><Right> neocomplcache#close_popup() . "\<Right>"
" "inoremap <expr><Up>    neocomplcache#close_popup() . "\<Up>"
" "inoremap <expr><Down>  neocomplcache#close_popup() . "\<Down>"
" " Or set this.
" "let g:neocomplcache_enable_cursor_hold_i = 1
" " Or set this.
" "let g:neocomplcache_enable_insert_char_pre = 1
" 
" " AutoComplPop like behavior.
" "let g:neocomplcache_enable_auto_select = 1
" 
" " Shell like behavior(not recommended).
" "set completeopt+=longest
" "let g:neocomplcache_enable_auto_select = 1
" "let g:neocomplcache_disable_auto_complete = 1
" "inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"
" 
" " Enable omni completion.
" autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
" autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
" autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
" autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
" autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
" 
" " Enable heavy omni completion.
" if !exists('g:neocomplcache_omni_patterns')
"   let g:neocomplcache_omni_patterns = {}
" endif
" let g:neocomplcache_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
" let g:neocomplcache_omni_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
" let g:neocomplcache_omni_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'
" 
" "=====================
" " Neocomplete Snippets
" "=====================
" " For perlomni.vim setting.
" " https://github.com/c9s/perlomni.vim
" let g:neocomplcache_omni_patterns.perl = '\h\w*->\h\w*\|\h\w*::'
" 
" " Plugin key-mappings.
" imap <C-k>     <Plug>(neosnippet_expand_or_jump)
" smap <C-k>     <Plug>(neosnippet_expand_or_jump)
" xmap <C-k>     <Plug>(neosnippet_expand_target)
" 
" " SuperTab like snippets behavior.
" imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
" \ "\<Plug>(neosnippet_expand_or_jump)"
" \: pumvisible() ? "\<C-n>" : "\<TAB>"
" smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
" \ "\<Plug>(neosnippet_expand_or_jump)"
" \: "\<TAB>"
" 
" " For snippet_complete marker.
" if has('conceal')
"   set conceallevel=2 concealcursor=i
" endif

" Strip trailing whitespace (,ss)
function! StripWhitespace()
	let save_cursor = getpos(".")
	let old_query = getreg('/')
	:%s/\s\+$//e
	call setpos('.', save_cursor)
	call setreg('/', old_query)
endfunction
noremap <leader>ss :call StripWhitespace()<CR>
" Save a file as root (,W)
noremap <leader>W :w !sudo tee % > /dev/null<CR>

" Automatic commands
if has("autocmd")
	" Enable file type detection
	filetype on
	" Treat .json files as .js
	autocmd BufNewFile,BufRead *.json setfiletype json syntax=javascript
endif
