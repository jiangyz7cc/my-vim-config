"set runtimepath+=~/.vim

"set pythonthreedll=D:\\Software\\Python\\Python3.7\\python37.dll 

"begin() refs plugins location.
"silent! call plug#begin('~/.vim/plugged')
silent! call plug#begin('$VIM/vimfiles/plugged')
"Plug 'vim-scripts/DrawIt'
"Plug 'mattn/emmet-vim'
"Plug 'neoclide/coc.nvim',{'branch':'release'}
"Plug 'ludovicchabant/vim-gutentags'
"Plug 'vim-scripts/taglist.vim'
"Plug 'jiangmiao/auto-pairs'
Plug 'SirVer/ultisnips'
"Plug 'honza/vim-snippets'
Plug 'scrooloose/nerdtree',{'on':'NERDTreeToggle'}
Plug 'scrooloose/nerdcommenter'
"Plug 'kshenoy/vim-signature'
Plug 'junegunn/vim-plug'
silent! call plug#end()

"--source file begin--
source $VIM\jiangyz\script\common.vim
source $VIM\jiangyz\script\plugin_config.vim
"--source file end--

"--global variable begin--
"let g:c=0;
"let g:cpp=0;
"let g:dev_c="d:/dev/c"
"--global variable end--

"let g:molokai_original=1
"let g:rehash256=1

cd d:\dev\c

"--set begin--
"language
let $LANG='en'
"set langmenu='en'

"encoding
set fileencoding=utf-8
set encoding=utf-8

set nocompatible "to vi.
behave xterm
filetype plugin indent on
syntax enable

"window position (left-top)
"winpos 300 150
"colorscheme
color molokai
"set noicon
"set iconstring=d:\software\vim\vimfiles\o.ico

set guioptions=eic "default:egmrLtT

"font:
"set guifont=DejaVu_Sans_Mono:h9:w5
set guifont=DejaVu_Sans_Mono:h12:w7:cDEFAULT:qCLEARTYPE
"set guifont=Courier_New:h14:w8:cANSI:qCLEARTYPE
"comlumns, text cols:80, num cols:4 
set lines=15 columns=64

set viminfo='10,\"100,:20,%,n~/.viminfo
set wildmenu "enhance command line completion(show an item list).
"char to invoke wildmode and select.
set wildchar=<Tab>
"form of 4 parts, each one explains what to do for [n] times when <wildchar> called.
"set wildmode=longest,list,full
set wildmode=full
set gcr=a:blinkon0 "static cursor
"set foldmethod=indent
"set foldmethod=syntax
"set nofoldenable "no folde"r when launching

"set path+=D:\Software\mingw64\include
"set tags=tags;

"backup:
set noundofile
set nobackup
set writebackup
set noswapfile
"set backup file's extension
"set backupext=.bak

"read the file automatically when it is changed outside.
set autoread
set number
"maximun width of text, long line broke after white space.
"0 disable this.
set textwidth=0
set autoindent "copy the indentation with the current line to a new line.
set smartindent "indenting when starting a new line for c-like file
"copy the prev indentation on autoindenting.
set copyindent
"smart indent for c-like code.
set cindent
"set which mode mouse can be used.
"not enabled: the GUI will still use the mouse for modeless selection. (doesn't move the cursor). 
"...=a: all mode
set mouse=

set incsearch "show where the pattern as it typed matches
set hlsearch "heighlight search answers

set undolevels=1000
set report=0 "always repot with command msg
"set synmaxcol=100 "high light columns<=100
set showmatch "match the l-r 
set matchtime=2
"set cursorline "hl the cursor at the line
"set cursorcolumn "hl the column
"set novisualbell
"wrap words
set wrap

set tabstop=4 "default=8
"Number of spaces that a <Tab> counts for while performing editingset.
set shiftwidth=4 "num of spaces to use for (auto)indent, default=8 set expandtab
set noexpandtab

"b:<BS> s:<Space>"
set whichwrap=b,s,h,l "allow backspace,space,h,l to jump line
set backspace=indent,eol,start  " Make backspace work as you would expect.
"Switch between buffers without having to save first.

set hidden
set laststatus=2 " Always show statusline.
"set dispcay =lastline " Show as much as possible of the last line.
set showmode "show current mode in command line.
set showcmd "show typed content(incomplete commands) when more are expected.
"set cmdheight=1 "cmd mode height
"normal text. Each status line item is of the form:
"%-0{minwid}.{maxwid}{item}
"set statusline=%F%m%r%h%w\ [OS=%{&ff}]\ [FT=%y]\ [%l,%v]
"influences when the last window will have a
"status line: 0: never 1: when windows>=2 2: always
set laststatus=2
set completeopt=preview,menu
"share clipboard with system.
set clipboard+=unnamed
"set magic "used for pattern, default is magic
"the row off cursor row.
set scrolloff=0
set ignorecase
"override when type in upper case chars.
set smartcase
"not break next word
"set linebreak

"set the bg style make chars easy to see.
set background=dark
"disp cursor position.
set ruler
"Set vimfiles location.
"set runtimepath+=set runtimepath=c:/users/jiangyz/.vim

"to show non-printable chars.
"set nolist
"set listchars=tab:▸\ ,eol:¬
set listchars=space:_,tab:▸_,trail:_,eol:¬,extends:>
"do not check inner options when open a new file.
set nomodeline
"insert mode completion style, show popup items list.
set completeopt=menu,longest
"controls buf switching.
"useopen: jump to opened win tha contains the buf when switching.
"usetab:like useopen, also consider win in other tabs.
set switchbuf=useopen,usetab

"set cdpath=D:\\Dev,D:\\Text

"@ stands for all english chars.
"48-57 is ascii
"indicate what is recognized as a word.
"(vi default:)
set iskeyword=@,48-57,_

"--window
"suitable minimal lines for the current window,
"use fewer lines if there isn't enough room.
au VimEnter * set winheight=5
"strict minimun height for other windows, they can't be smaller.
set winminheight=1
"auto change dir to current file or buf.
"set autochdir

"set some modes which can be set by behave too.
"when to start select mode instead of visual mode.
"set selectmode=""
"set mousemodel="extend"
"set keymodel=""
"old|[in|ex]clusive
"set sel="inclusive"

set title "set disp on/off of vim procedure's title.
"string to disp when title on.
set title titlestring=%<%F%=%l/%L-%P titlelen=70
set winaltkeys=no "turn off <Alt> to GUI menu.
"--set end--

"--map begin--

"go to EditOF
map <F2> GA
map <F5> :call Compile()<CR>
map <F6> :call Run()<CR>
map <C-F5> :call DebugCompile()<CR>
map <C-F6> :call DebugRun()<CR>
map <F10> :tabnew<CR>
map <C-Tab> <C-w>w
map <C-S-Tab> <C-w>W
"map <silent>;sy :call ToggleSyntax()<CR>

"into v mode, select an inner word.
noremap <space> viw
"delete a line and paste below the next line. (move down a line).
noremap - ddp
"~ above the prev line. (move up a line).
noremap _ ddkP

"search & replace with g
noremap \srg :%s///g<Left><Left><Left>
noremap \src ' :%s///gc<Left><Left><Left><Left>
"if now at col[1] then 0 means use ^ else use 0.
noremap <expr>0 col('.')==1?'^':'0'
"--map end--

"--imap:--
"complete:
"map <C-n>:complete options match -> <C-x><C-n>:local match
inoremap <C-n> <C-x><C-n>
"<C-x><C-n>:from current file -> <C-n>
inoremap <C-x><C-n> <C-n>
"a whole line 
inoremap <C-x><C-l> <C-l>
"from dictionary
inoremap <C-x><C-k> <C-k>
"from tag
inoremap <C-x><C-]> <C-]>
"from file path
inoremap <C-x><C-f> <C-f>
"complete$

"imap <C-Tab> <Esc><C-w>w
"imap <C-S-Tab> <Esc><C-w>W
inoremap <silent><Leader>time <C-R>=strftime("%l:%M %p")<CR>
inoremap <silent><Leader>calc <C-R>=string(eval(input("calc: ")))<CR>
inoremap <C-d> <Esc>ddi

"--nmap--
nmap <Tab> V>
nmap <S-Tab> V<
"close current window.
nnoremap zq :clo<CR>

nnoremap cO O<Esc>j
nnoremap co o<Esc>k

"quick enter file address.
"--nleader begin--
nnoremap <Leader>h :help 

"norepaste content in register +.
nnoremap <Leader>p "+p
"nnoremap <Leader>f $s{<Esc>jcoki<Esc>
nnoremap <Leader>f $s{<CR>}<ESC>O
"nmap <Leader>ct ctags -R --c++-kinds=+px --fields=+iaS --extra=+q<CR> "for c++
"nmap <silent><leader>e :explore<cr> 
"--nleader end---

"nnoremap zm I<!--<Esc>A--><Esc>
"nnoremap zn ^4x$xxx

nnoremap <buffer> <CR> 0ye<C-W>w:tag <C-R>"<CR>
"--nmap end--

""--vmap begin--
"shift code with a tab-width, remain in v mode after the operation.
vnoremap <tab> >gv
vnoremap <S-Tab> <gv
vnoremap > >gv
vnoremap < <gv
""copy to win clipboard
"vnoremap <Leader>y "+y
"vnoremap _g y:exe "grep /" . escape(@", '\\/') . "/ *.c *.h"<CR>
"--vmap end

"--cmap begin
"to select history command..
cnoremap <C-j> <down>
cnoremap <C-k> <up>
"--cmap end
"--map end

"--abbr begin--
"--iabbr begin
"date time
iab xdt <C-r>=strftime("%Y-%m-%d %H:%M:%S")<CR>
"date
iab xd <C-r>=strftime("%Y-%m-%d")<CR>
"short date
iab xsd <C-r>=strftime("%Y%m%d")<CR>
"time
iab xt <C-r>=strftime("%X")<CR>
"insert current working dir.
iab <silent>cwd <C-R>=getcwd()<CR>
"--iabbr end
"--abbr end--

"--autocmd begin--
"jump to mark ' when read buffer.
"same as above(expanded multi line).
autocmd BufReadPost *
	\if line("'\"")>0 && line("'\"") <= line("$") |
	\exe "normal g'\""|
	\endif

"autocmd BufNewFile *.c :call SourceC()<CR>
"autocmd BufNewFile *.cpp :call SourceCpp()<CR> 

augroup vimrc
	"clear all vimrc group's autocmd.
	autocmd!
	"autocmd BufNewFile,BufRead *.c echo "got c buf!"
	"autocmd BufNewFile,BufRead *.cpp source $VIM\jiangyz\script\c++.vim
	autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END

augroup group_c
	"autocmd FileType c source "hi, c file!"
	autocmd FileType c source $VIM\jiangyz\script\c.vim
	autocmd FileType c,cpp source $VIM\jiangyz\script\c_c++.vim
	"autocmd FileType cpp source $VIM\jiangyz\script\c_c++.vim
	autocmd BufNewFile *.c call C_EmptyTemplate()
	"When starting to edit a new buffer, after
	"reading the file into the buffer, before
	"executing the modelines.
	"autocmd BufReadPost *.c :echo "hi c file! (BufRead)"
augroup END

"autocmd vimrc FileType txt source ~/abbr.vim
"to generate skeletions when created a new buf.
"autocmd vimrc BufNewFile *.c[ch] 0read ~/skeletions/skel.c 
"--autocmd end--

"--function begin--
func! Compile()
	exec "update"
	if &filetype=='c'
		exec '!gcc -std=c99 -Wall % -o %<.exe'
	elseif &filetype=='cpp'
		exec '!g++ -std=c++11 -Wall -g % -o %<.exe'
	endif
endf

func! DebugCompile()
	exec "update"
	if &filetype == 'c'
		exec "!gcc -ggdb3 -Wall -g % -o %<.exe"
	elseif &filetype == 'cpp'
		"exec "!g++ -std=c++11 -Wall -g % -o %<.exe"
		exec "!g++ -g % -o %<.exe"
	endif
endfunc

func! Run()
	if &filetype == 'c' || &filetype == 'cpp'
		exec "!%<.exe"
	"elseif &filetype == 'autohotkey'
	"	exec "!%"
	endif
endfunc

func! DebugRun()
	exec "!gdb %<.exe"
endfunc

"au VimLeave * echo "good bye!"
"sign to terminate the procession of vimscript.
finish
"echo 'hello ' . $USER '! now: ' . strftime("%Y-%m-%d %T")
"echo 'Hello ' . $USER '! Working on: ' . strftime("%Y-%m-%d %T")
