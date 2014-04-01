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
" Bundle 'flazz/vim-colorschemes'
Bundle 'scrooloose/nerdtree'
"Bundle 'jistr/vim-nerdtree-tabs'
"Bundle 'ervandew/supertab'
"Bundle 'msanders/snipmate.vim'
"Bundle 'Shougo/neocomplcache.vim'
"Bundle 'Shougo/neosnippet'
"Bundle 'honza/vim-snippets'
"Bundle 'Townk/vim-autoclose'
Bundle 'godlygeek/tabular'
" Bundle 'junegunn/vim-easy-align'
" Bundle 'majutsushi/tagbar'
" Bundle 'scrooloose/syntastic'
" Bundle 'tpope/vim-unimpaired'
"Bundle 'tpope/vim-repeat'
Bundle 'mileszs/ack.vim'
"Bundle 'nathanaelkane/vim-indent-guides'
"Bundle 'Yggdroot/indentLine'
"Bundle 'airblade/vim-gitgutter'
" Bundle 'tpope/vim-haml'
Bundle 'tpope/vim-fugitive'
"Bundle 'Lokaltog/powerline', {'rtp':'/powerline/bindings/vim'}
Bundle 'ap/vim-css-color'
Bundle 'jiangmiao/auto-pairs'
"Bundle 'xolox/vim-misc'
"Bundle 'xolox/vim-session'
"Bundle 'myusuf3/numbers.vim'
"Bundle 'tpope/vim-obsession'
" Bundle 'plasticboy/vim-markdown'
" Bundle 'tpope/vim-markdown'
"Bundle 'terryma/vim-multiple-cursors'
" Bundle 'Valloric/YouCompleteMe'
Bundle 'vim-ruby/vim-ruby'
" Bundle 'thoughtbot/vim-rspec'
" Bundle 'wincent/Command-T'
" Bundle 'gregsexton/MatchTag'
"Bundle 'tpope/vim-endwise'
Bundle 'SirVer/ultisnips'
Bundle 'vim-scripts/ZoomWin'
"Bundle 'Trevoke/ultisnips-rspec'
"Bundle 'suan/vim-instant-markdown'
"Bundle 'joeytwiddle/sexy_scroller.vim'
" Bundle 't9md/vim-ruby-xmpfilter'
" Bundle 'Rykka/colorv.vim'
"Bundle 'mattn/webapi-vim'
Bundle 'kana/vim-textobj-user'
Bundle 'nelstrom/vim-textobj-rubyblock'
" Bundle 'tpope/vim-rails'
"Bundle 'Spaceghost/vim-matchit'
"Bundle 'ecomba/vim-ruby-refactoring'
" Bundle 'elixir-lang/vim-elixir'
" Bundle 'rodjek/vim-puppet'
Bundle 'roman/golden-ratio'
" Bundle 'pangloss/vim-javascript'
Bundle 'jelera/vim-javascript-syntax'
" Bundle 'w0ng/vim-hybrid'
" Bundle 'goatslacker/mango.vim'
" Bundle 'vim-scripts/harlequin'
" Bundle 'weih/vim-skittles-theme'
Bundle 'kchmck/vim-coffee-script'
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
Bundle 'hwartig/vim-seeing-is-believing'
" Bundle 'szw/vim-dict'
" Bundle 'modsound/macdict-vim'
Bundle 'Shougo/vimproc.vim'
Bundle 'itchyny/dictionary.vim'

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
" set list
" set listchars=tab:›\ ,trail:•,extends:#,nbsp:. " Highlight problematic whitespace "
" set lazyredraw

syntax enable
syntax on

" Colorscheme
set background=light
set t_Co=256 " 256 colors
colorscheme jellybeans
" colorscheme skittles
if has('gui_running')
  " set background=light
  " colorscheme cobalt
  colorscheme mac_classic_alt
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

" Folding
set foldmethod=syntax
set foldnestmax=6
set nofoldenable
hi Folded ctermfg=216 ctermbg=0

au FileType javascript call JavaScriptFold()

" CoffeeScript Fold by indent
autocmd BufNewFile,BufReadPost *.coffee setl foldmethod=indent nofoldenable
autocmd BufNewFile,BufReadPost *.erb setl foldmethod=indent nofoldenable
" autocmd BufNewFile,BufReadPost *.scss setl foldmethod=indent nofoldenable
" autocmd BufNewFile,BufReadPost *.coffee setl shiftwidth=2 expandtab

" vim-textobj-rubyblock
runtime macros/matchit.vim

" Auto reload vimrc
augroup myvimrchooks
  au!
  au BufWritePost .vimrc,_vimrc,vimrc,.gvimrc,_gvimrc,gvimrc,mac_classic_alt.vim so $MYVIMRC | if has('gui_running') | so $MYVIMRC | endif
augroup END

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
imap <c-l> <space>=><space>
imap <c-k> <%<space>%><Left><Left><Left>
nnoremap Q <nop>
nnoremap <cr> :nohlsearch<cr>
" nmap <silent> <leader>d <Plug>DashSearch

" nmap <c-s> :w<CR>
nmap <c-s> :NERDTreeToggle<CR>:NERDTreeMirror<CR>
imap <c-s> <Esc>:w<CR>a
imap <c-s> <Esc><c-s>

imap <D-<> tag<tab>

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

" ctags stuff
nnoremap <leader>ct :!ctags -R .<cr>

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

" Gvim
nmap <buffer> <M-r> <Plug>(seeing-is-believing-run)
xmap <buffer> <M-r> <Plug>(seeing-is-believing-run)
imap <buffer> <M-r> <Plug>(seeing-is-believing-run)

nmap <buffer> <M-m> <Plug>(seeing-is-believing-mark)
xmap <buffer> <M-m> <Plug>(seeing-is-believing-mark)
imap <buffer> <M-m> <Plug>(seeing-is-believing-mark)

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
noremap <leader>d :Dictionary -cursor-word<cr>

" let g:Powerline_symbols = 'fancy'

    " NerdTree {
        " map <F2> :NERDTreeToggle<CR>:NERDTreeMirror<CR>
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
" SWITCH BETWEEN TEST AND PRODUCTION CODE
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! OpenTestAlternate()
  let new_file = AlternateForCurrentFile()
  exec ':e ' . new_file
endfunction
function! AlternateForCurrentFile()
  let current_file = expand("%")
  let new_file = current_file
  let in_spec = match(current_file, '^spec/') != -1
  let going_to_spec = !in_spec
  let in_app = match(current_file, '\<controllers\>') != -1 || match(current_file, '\<models\>') != -1 || match(current_file, '\<views\>') != -1 || match(current_file, '\<helpers\>') != -1
  if going_to_spec
    if in_app
      let new_file = substitute(new_file, '^app/', '', '')
    end
    let new_file = substitute(new_file, '\.e\?rb$', '_spec.rb', '')
    let new_file = 'spec/' . new_file
  else
    let new_file = substitute(new_file, '_spec\.rb$', '.rb', '')
    let new_file = substitute(new_file, '^spec/', '', '')
    if in_app
      let new_file = 'app/' . new_file
    end
  endif
  return new_file
endfunction
nnoremap <leader>. :call OpenTestAlternate()<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" RUNNING TESTS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! MapCR()
  nnoremap <cr> :call RunTestFile()<cr>
endfunction
call MapCR()
nnoremap <leader>T :call RunNearestTest()<cr>
nnoremap <leader>r :call RunTests('')<cr>
nnoremap <leader>c :w\|:!script/features<cr>
nnoremap <leader>w :w\|:!script/features --profile wip<cr>

function! RunTestFile(...)
    if a:0
        let command_suffix = a:1
    else
        let command_suffix = ""
    endif

    " Run the tests for the previously-marked file.
    let in_test_file = match(expand("%"), '\(.feature\|_spec.rb\)$') != -1
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
        if filereadable("script/test")
            exec ":!script/test " . a:filename
        " Fall back to the .test-commands pipe if available, assuming someone
        " is reading the other side and running the commands
        elseif filewritable(".test-commands")
          let cmd = 'rspec --color --format progress --require "~/lib/vim_rspec_formatter" --format VimFormatter --out tmp/quickfix'
          exec ":!echo " . cmd . " " . a:filename . " > .test-commands"

          " Write an empty string to block until the command completes
          sleep 100m " milliseconds
          :!echo > .test-commands
          redraw!
        " Fall back to a blocking test run with Bundler
        elseif filereadable("Gemfile")
            exec ":!bundle exec rspec --color " . a:filename
        " Fall back to a normal blocking test run
        else
            exec ":!rspec --color " . a:filename
        end
    end
endfunction

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Selecta Mappings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Run a given vim command on the results of fuzzy selecting from a given shell
" command. See usage below.
function! SelectaCommand(choice_command, selecta_args, vim_command)
  try
    silent let selection = system(a:choice_command . " | selecta " . a:selecta_args)
  catch /Vim:Interrupt/
    " Swallow the ^C so that the redraw below happens; otherwise there will be
    " leftovers from selecta on the screen
    redraw!
    return
  endtry
  redraw!
  exec a:vim_command . " " . selection
endfunction

function! SelectaFile(path)
  call SelectaCommand("find " . a:path . "/* -type f", "", ":e")
endfunction

nnoremap <leader>f :call SelectaFile(".")<cr>
nnoremap <leader>gv :call SelectaFile("app/views")<cr>
nnoremap <leader>gc :call SelectaFile("app/controllers")<cr>
nnoremap <leader>gm :call SelectaFile("app/models")<cr>
nnoremap <leader>gh :call SelectaFile("app/helpers")<cr>
nnoremap <leader>gl :call SelectaFile("lib")<cr>
nnoremap <leader>gp :call SelectaFile("public")<cr>
nnoremap <leader>gs :call SelectaFile("public/stylesheets")<cr>
nnoremap <leader>gf :call SelectaFile("features")<cr>

function! SelectaIdentifier()
  " Yank the word under the cursor into the z register
  normal "zyiw
  " Fuzzy match files in the current directory, starting with the word under
  " the cursor
  call SelectaCommand("find * -type f", "-s " . @z, ":e")
endfunction
nnoremap <c-g> :call SelectaIdentifier()<cr>

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
  autocmd VimEnter * UltiSnipsAddFiletypes erb.html
endif
