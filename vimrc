set nocompatible

filetype off                   " required!
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'kien/ctrlp.vim'
Bundle 'tomtom/tcomment_vim'
Bundle 'mileszs/ack.vim'
Bundle 'scrooloose/nerdtree'
" Bundle 'hwartig/vim-seeing-is-believing'
Bundle 'kchmck/vim-coffee-script'
Bundle 'jelera/vim-javascript-syntax'
Bundle 'vim-ruby/vim-ruby'
Bundle 'SirVer/ultisnips'
Bundle 'vim-scripts/ZoomWin'
Bundle 'tpope/vim-fugitive'
" Bundle 'kana/vim-textobj-user'
" Bundle 'nelstrom/vim-textobj-rubyblock'
" Bundle 'greyblake/vim-preview'
Bundle 'roman/golden-ratio'
Bundle 'jiangmiao/auto-pairs'
Bundle 'cakebaker/scss-syntax.vim'
" Bundle 'tpope/vim-fireplace'
" Bundle 'guns/vim-clojure-static'
" Bundle 'wting/rust.vim'
" Bundle 'kovisoft/paredit'
" Bundle 'derekwyatt/vim-scala'
" Bundle 'ktvoelker/sbt-vim'
" Bundle 'wavded/vim-stylus'
" Bundle 'tpope/vim-surround'
"Bundle 'altercation/vim-colors-solarized'
"Bundle 'scrooloose/nerdcommenter'
"Bundle 'Lokaltog/vim-easymotion'
" Bundle 'flazz/vim-colorschemes'
"Bundle 'jistr/vim-nerdtree-tabs'
"Bundle 'ervandew/supertab'
"Bundle 'msanders/snipmate.vim'
"Bundle 'Shougo/neocomplcache.vim'
"Bundle 'Shougo/neosnippet'
"Bundle 'honza/vim-snippets'
"Bundle 'Townk/vim-autoclose'
" Bundle 'godlygeek/tabular'
" Bundle 'junegunn/vim-easy-align'
" Bundle 'majutsushi/tagbar'
" Bundle 'scrooloose/syntastic'
" Bundle 'tpope/vim-unimpaired'
"Bundle 'tpope/vim-repeat'
"Bundle 'nathanaelkane/vim-indent-guides'
"Bundle 'Yggdroot/indentLine'
"Bundle 'airblade/vim-gitgutter'
" Bundle 'tpope/vim-haml'
"Bundle 'Lokaltog/powerline', {'rtp':'/powerline/bindings/vim'}
" Bundle 'ap/vim-css-color'
"Bundle 'xolox/vim-misc'
"Bundle 'xolox/vim-session'
"Bundle 'myusuf3/numbers.vim'
"Bundle 'tpope/vim-obsession'
" Bundle 'plasticboy/vim-markdown'
" Bundle 'tpope/vim-markdown'
"Bundle 'terryma/vim-multiple-cursors'
" Bundle 'Valloric/YouCompleteMe'
" Bundle 'thoughtbot/vim-rspec'
" Bundle 'wincent/Command-T'
" Bundle 'gregsexton/MatchTag'
"Bundle 'tpope/vim-endwise'
"Bundle 'Trevoke/ultisnips-rspec'
"Bundle 'suan/vim-instant-markdown'
"Bundle 'joeytwiddle/sexy_scroller.vim'
" Bundle 't9md/vim-ruby-xmpfilter'
" Bundle 'Rykka/colorv.vim'
"Bundle 'mattn/webapi-vim'
" Bundle 'tpope/vim-rails'
"Bundle 'Spaceghost/vim-matchit'
"Bundle 'ecomba/vim-ruby-refactoring'
" Bundle 'elixir-lang/vim-elixir'
" Bundle 'rodjek/vim-puppet'
" Bundle 'pangloss/vim-javascript'
" Bundle 'w0ng/vim-hybrid'
" Bundle 'goatslacker/mango.vim'
" Bundle 'vim-scripts/harlequin'
" Bundle 'weih/vim-skittles-theme'
" Bundle 'othree/javascript-libraries-syntax.vim'
"Bundle 'c9s/colorselector.vim'
" Bundle 'rizzatti/funcoo.vim'
" Bundle 'rizzatti/dash.vim'
" Bundle 'guns/xterm-color-table.vim'
" Bundle 'mattn/gist-vim'
" Bundle 'mattn/emmet-vim'
" Bundle 'klen/python-mode'
" Bundle 'weih/vim-mac-classic-alt'
" Bundle 'tpope/vim-rbenv'
" Bundle 'freitass/todo.txt-vim'
" Bundle 'bilalq/lite-dfm'
" Bundle 'szw/vim-ctrlspace'
" Bundle 'digitaltoad/vim-jade'
" Bundle 'szw/vim-dict'
Bundle 'modsound/macdict-vim'
" Bundle 'Shougo/vimproc.vim'
" Bundle 'itchyny/dictionary.vim'

filetype plugin indent on

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
function! DerekFugitiveStatusLine()
  let status = fugitive#statusline()
  let trimmed = substitute(status, '\[Git(\(.*\))\]', '\1', '')
  let trimmed = substitute(trimmed, '\(\w\)\w\+\ze/', '\1', '')
  let trimmed = substitute(trimmed, '/[^_]*\zs_.*', '', '')
  if len(trimmed) == 0
    return ""
  else
    return '(' . trimmed[0:10] . ')'
  endif
endfunction

" Set the status line the way i like it
set stl=%f\ %m\ %r%{DerekFugitiveStatusLine()}\ Line:%l/%L[%p%%]\ Col:%v\ Buf:#%n\ [%b][0x%B]
" set statusline=%<%f\                     " Filename
" set statusline+=%w%h%m%r                 " Options
" set statusline+=%{fugitive#statusline()} " Git Hotness
" set statusline+=\ [%{&ff}/%Y]            " Filetype
" set statusline+=\ [%{getcwd()}]          " Current dir
" set statusline+=%=%-14.(%l,%c%V%)\ %p%%  " Right aligned file nav info
set expandtab
set showtabline=2
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
" set hls!
" Prevent Vim from clobbering the scrollback buffer. See
" http://www.shallowsky.com/linux/noaltscreen.html
set t_ti= t_te=
" Store temporary files in a central spot
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set list
set listchars=tab:›\ ,trail:•,extends:#,nbsp:. " Highlight problematic whitespace "
" set lazyredraw
set clipboard=unnamed
set relativenumber

syntax enable
syntax on

" Colorscheme
set background=dark
set t_Co=256 " 256 colors
" colorscheme jellybeans
colorscheme Tomorrow-Night
  " colorscheme railscasts
  " colorscheme monokai
if has('gui_running')
  " set background=light
  " colorscheme cobalt
  colorscheme mac_classic_alt
  " colorscheme jellybeans
  " colorscheme Tomorrow-Night
  " colorscheme twilight
  " colorscheme railscasts
  " colorscheme skittles
endif
" colorscheme weih
hi clear SpellBad
hi clear SpellLocal
hi clear SpellCap
hi clear SpellRare

hi TabLine      guifg=#333 guibg=#222 gui=none ctermfg=254 ctermbg=232 cterm=none
hi TabLineSel   guifg=#666 guibg=#222 gui=bold ctermfg=231 ctermbg=235 cterm=bold
" hi TabLineFill  guifg=#999 guibg=#222 gui=none ctermfg=254 ctermbg=238 cterm=none

hi CursorLineNr term=bold ctermfg=14 gui=bold guifg=#c5060b

" Git Diff
hi diffAdded ctermfg=Green
hi diffRemoved ctermfg=Red

" Folding
set foldmethod=syntax
set foldnestmax=6
set nofoldenable
hi Folded guifg=#986DB2 ctermfg=104

au FileType javascript call JavaScriptFold()

" CoffeeScript Fold by indent
autocmd BufNewFile,BufReadPost *.coffee setl foldmethod=indent nofoldenable
autocmd BufNewFile,BufReadPost *.erb setl foldmethod=indent nofoldenable
" autocmd BufNewFile,BufReadPost *.scss setl foldmethod=indent nofoldenable
" autocmd BufNewFile,BufReadPost *.coffee setl shiftwidth=2 expandtab

" vim-textobj-rubyblock
" runtime macros/matchit.vim

" Auto reload vimrc
" augroup myvimrchooks
"   au!
"   au BufWritePost .vimrc,_vimrc,vimrc,.gvimrc,_gvimrc,gvimrc,mac_classic_alt.vim so $MYVIMRC | if has('gui_running') | so $MYVIMRC | so $MYGVIMRC | endif
" augroup END

" let g:tlist_javascript_settings = 'javascript;s:string;a:array;o:object;f:function;m:member'

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
" nnoremap <c-j> <c-w>j
" nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l
nnoremap <c-j> <c-d>
nnoremap <c-k> <c-u>

" nnoremap <cr> <kDivide>

nmap <leader>v :tabedit $MYVIMRC<CR>

cnoremap %% <C-R>=fnameescape(expand('%:h')).'/'<cr>
map <leader>ew :e %%
map <leader>es :sp %%
map <leader>ev :vsp %%
map <leader>et :tabe %%

nmap <leader>" ci"
nmap <leader>' ci'
" imap <c-l> <space>=><space>
imap <c-l> binding.pry
nnoremap Q <nop>
nnoremap <space> :nohlsearch<cr><kDivide>
" nmap <silent> <leader>d <Plug>DashSearch

nmap <c-s> :w<CR>
" nmap <c-s> :NERDTreeToggle<CR>:NERDTreeMirror<CR>
nmap <leader>l :NERDTreeToggle<CR>:NERDTreeMirror<CR>
imap <c-s> <Esc>:w<CR>a
imap <c-s> <Esc><c-s>

imap <D->> <%<space>%><Left><Left><Left>
imap <c-k> <%<space>%><Left><Left><Left>
imap <D-<> tagi<c-e>

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

" CtrlP
nnoremap <leader>cm :CtrlPMRUFiles<cr>
nnoremap <leader>cb :CtrlPBuffer<cr>
nnoremap <c-b> :CtrlPBuffer<cr>

" Ctags stuff
nnoremap <leader>ct :!ctags -R .<cr>

" Ctags select
nnoremap <leader>ts :ts <c-r><c-w><cr>

" golden ratio
nnoremap <leader>gr :GoldenRatioResize<cr>
nnoremap <leader>gt :GoldenRatioToggle<cr>

nmap <F8> :TagbarToggle<CR>
" nmap <F5> :SyntasticCheck<CR>
nmap <F12> :w<CR>:source %<CR>:BundleInstall<CR>
" nmap <c-b> :w<CR>:!ruby %<CR>
" noremap <leader>t :w\|:!rake<cr>
" noremap <leader>r :w\|:!rake %<cr>
noremap <leader>j :w\|:!node %<cr>

" map <Leader>t :call RunCurrentSpecFile()<CR>
" map <Leader>s :call RunNearestSpec()<CR>
" map <Leader>l :call RunLastSpec()<CR>
" map <Leader>a :call RunAllSpecs()<CR>
" let g:rspec_runner = "os_x_iterm"

" Spell Check
noremap z- 1z=

:nnoremap <leader>m :silent !open -a Marked.app '%:p'<cr>

" Toggle for paste from other program
nnoremap <F3> :set invpaste paste?<CR>
imap <F3> <C-O>:set invpaste paste?<CR>
set pastetoggle=<F3>


"Scala
nmap <leader>; :w<CR>:!scala %<CR>


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

" Gvim
" nmap <buffer> <M-r> <Plug>(seeing-is-believing-run)
" xmap <buffer> <M-r> <Plug>(seeing-is-believing-run)
" imap <buffer> <M-r> <Plug>(seeing-is-believing-run)
"
" nmap <buffer> <M-m> <Plug>(seeing-is-believing-mark)
" xmap <buffer> <M-m> <Plug>(seeing-is-believing-mark)
" imap <buffer> <M-m> <Plug>(seeing-is-believing-mark)

" Terminal
nmap <buffer> <F2> <Plug>(seeing-is-believing-run)
xmap <buffer> <F2> <Plug>(seeing-is-believing-run)
imap <buffer> <F2> <Plug>(seeing-is-believing-run)

nmap <buffer> <F1> <Plug>(seeing-is-believing-mark)
xmap <buffer> <F1> <Plug>(seeing-is-believing-mark)
imap <buffer> <f1> <plug>(seeing-is-believing-mark)

" sudo
cmap w!! w !sudo tee % >/dev/null

" Dictionary
noremap <leader>d :MacDict <c-r><c-w><cr>


        let NERDTreeShowBookmarks=1
        let NERDTreeIgnore=['\.pyc', '\~$', '\.swo$', '\.swp$', '\.git', '\.hg', '\.svn', '\.bzr']
        let NERDTreeChDirMode=0
        let NERDTreeQuitOnOpen=1
        let NERDTreeMouseMode=2
        let NERDTreeShowHidden=1
        let NERDTreeKeepTreeInNewTab=1
        let g:nerdtree_tabs_open_on_gui_startup=0
        let NERDTreeWinSize=40

        let g:ctrlp_working_path_mode = 'ra'
        nnoremap <silent> <D-t> :CtrlP<CR>
        nnoremap <silent> <D-r> :CtrlPMRU<CR>
        let g:ctrlp_custom_ignore = {
            \ 'dir':  '\.git$\|\.hg$\|\.svn$',
            \ 'file': '\.exe$\|\.so$\|\.dll$\|\.pyc$' }

            let g:ctrlp_user_command = {
                \ 'types': {
                    \ 1: ['.git', 'cd %s && git ls-files . --cached --exclude-standard --others'],
                    \ 2: ['.hg', 'hg --cwd %s locate -I .'],
                \ },
                \ 'fallback': 'find %s -type f'
            \ }
            let g:indent_guides_auto_colors = 1
            let g:indent_guides_start_level = 2
            let g:indent_guides_guide_size = 1
            let g:indent_guides_enable_on_vim_startup = 1

        let g:ackprg = 'ag --nogroup --nocolor --column'

        let g:indentLine_color_term = 239

        let g:vim_markdown_folding_disabled=1
    " UltiSnips
        let g:UltiSnipsExpandTrigger="<c-e>"
        let g:UltiSnipsJumpForwardTrigger="<c-e>"
        " let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
        let g:UltiSnipsDontReverseSearchPath="1"

        "let g:UltiSnipsSnippetDirectories=["~/.vim/bundle/vim-snippets"]

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
" RUNNING TESTS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! MapCR()
  nnoremap <cr> :call RunTestFile()<cr>
endfunction
call MapCR()
nnoremap <leader>T :call RunNearestTest()<cr>
" nnoremap <leader>r :call RunTests('')<cr>


nnoremap <leader>c :w\|:!script/features<cr>
nnoremap <leader>w :w\|:!script/features --profile wip<cr>

function! RunCurrentLine()
  let line_number = line('.')
  call RunCurrentLine(line_number)
endfunction

function! RunTestFile(...)
    if a:0
        let command_suffix = a:1
    else
        let command_suffix = ""
    endif

    " Run the tests for the previously-marked file.
    let in_test_file = match(expand("%"), '\(.feature\|_spec.rb\|_test.rb\)$') != -1
    if in_test_file
        call SetTestFile()
    elseif !exists("t:grb_test_file")
        return
    end
    call RunTests(t:grb_test_file . command_suffix)
endfunction

function! RunNearestTest()
    let spec_line_number = line('.')
    call RunTestFile(":" . spec_line_number)
endfunction

function! SetTestFile()
    " Set the spec file that tests will be run for.
    let t:grb_test_file=@%
endfunction

function! RunTests(filename)
    " Write the file and run tests for the given filename
    if expand("%") != ""
      :w
    end
    if match(a:filename, '\.feature$') != -1
        exec ":!script/features " . a:filename
    else
        " First choice: project-specific test script
        " if filereadable("script/test")
        "     exec ":!script/test " . a:filename
        " " Fall back to the .test-commands pipe if available, assuming someone
        " " is reading the other side and running the commands
        " elseif filewritable(".test-commands")
        "   let cmd = 'rspec --color --format progress --require "~/lib/vim_rspec_formatter" --format VimFormatter --out tmp/quickfix'
        "   exec ":!echo " . cmd . " " . a:filename . " > .test-commands"
        "
        "   " Write an empty string to block until the command completes
        "   sleep 100m " milliseconds
        "   :!echo > .test-commands
        "   redraw!
        " " Fall back to a blocking test run with Bundler
        " elseif filereadable("Gemfile")
        "     exec ":!bundle exec rspec --color " . a:filename
        " " Fall back to a normal blocking test run
        " else
            exec ":!bin/rspec --color " . a:filename
            " exec ":!zeus rspec --no-color " . a:filename
            " exec ":!clear"
            " exec ":!ruby -Ilib:test " . a:filename
        " end
    end
endfunction
" nnoremap <leader>r :w\|:exec "!ruby -Itest <C-R>=expand("%:p")<cr> -l" line('.')<cr>
nnoremap <leader>r :w\|:exec "!./bin/rspec <C-R>=expand("%:p")<cr>:".line('.')<cr>
" nnoremap <leader>r :w\|:exec "!zeus rspec --no-color <C-R>=expand("%:p")<cr>:".line('.')<cr>

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
  autocmd BufNewFile,BufRead * UltiSnipsAddFiletypes erb.html
endif
