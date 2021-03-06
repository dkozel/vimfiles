" Don't be compatible with vi
set nocompatible

filetype off

" Use Vundle to manage plugins
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Bundles
source ~/.vim/vimrc.bundles

filetype plugin indent on

" More powerful backspacing
set backspace=indent,eol,start

" Larger history storage
set history=1000

" Enable syntax highlighting
syntax on

" Auto scroll to keep 6 lines below or above the cursor
set scrolloff=6

" Allow toggling between relative and absolute line numbers
function! NumberToggle()
  if(&relativenumber == 1)
    set norelativenumber
  else
    set relativenumber
  endif
endfunc

nnoremap <C-n> :call NumberToggle()<cr>

set relativenumber

autocmd InsertEnter * :set number
autocmd InsertLeave * :set relativenumber

" Enable Modeline support
set modeline
set modelines=5

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
set background=dark

" Color settings
set t_Co=256
color tir_black
set cursorline

" Uncomment the following to have Vim jump to the last position when
" reopening a file
"if has("autocmd")
"  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
"endif

" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

" Matching
set showmatch       " Show matching brackets.
set smartcase       " Do smart case matching
set incsearch       " Incremental search
set ignorecase      " Do case insensitive matching

" Status
set showcmd         " Show (partial) command in status line.
set laststatus=2    " Always show status bar
set ruler           " Show cursor position
set number          " Show line number

" Indentation
set autoindent
set expandtab
set tabstop=4
set shiftwidth=4
set linespace=4

autocmd Syntax html,css,ruby,javascript,coffee set tabstop=2 shiftwidth=2 linespace=2

" Indent guides (default toggle key is <leader>ig)
let g:indent_guides_auto_colors=0
let g:indent_guides_start_level=2
let g:indent_guides_enable_on_vim_startup = 0
let g:indent_guides_guide_size=1
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  ctermbg=239
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=242

if has('conceal')
  set conceallevel=2 concealcursor=i
endif

" SuperTab
let g:SuperTabDefaultCompletionType="<c-n>"

" Nerd Tree
let NERDChristmasTree=1
let NERDTreeWinSize=25

" Tab Bar
let g:Tb_MaxSize = 2
let g:Tb_TabWrap = 1

" Tagbar
let g:tagbar_left=0
let g:tagbar_width=30

" If you prefer the Omni-Completion tip window to close when a selection is
" made, these lines close it on movement in insert mode or when leaving
" insert mode
autocmd CursorMovedI * if pumvisible() == 0|silent! pclose|endif
autocmd InsertLeave * if pumvisible() == 0|silent! pclose|endif

" Rainbow parentheses for C/C++
let g:rbpt_colorpairs = [
    \ ['149', 'DarkOliveGreen3'],
    \ ['178', 'Gold3'],
    \ ['117', 'SkyBlue1'],
    \ ['210',  'LightCoral'],
    \ ]
let g:rbpt_max = 4
autocmd Syntax c,cpp RainbowParenthesesToggle

" Disable folding of math in Tex
autocmd Filetype tex setlocal nofoldenable

" Key mappings
nmap <F4> :IndentGuidesToggle<cr>
nmap <F5> :NERDTreeToggle<cr>
nmap <F6> :TagbarToggle<cr>

" Extra commands
command W w
command WQ wq
command Wq wq
command Q q
command Qa qa
command QA qa

" Remap arrows to assist in learning homerow based navigation
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

" Remap 'jk' to provide escape
inoremap <esc> <nop>
inoremap jk <esc>

" Fix paste bug triggered by the above inoremaps
set t_BE=
