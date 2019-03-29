let mapleader=";"             " Leader key is SEMICOLON

" --PLUGINS--
call plug#begin('~/.local/share/nvim/site/plugged')

Plug 'vim-airline/vim-airline'
Plug 'nanotech/jellybeans.vim'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

"--Colors--

colorscheme jellybeans
let g:airline_theme='jellybeans'
syntax enable

"--UI--

set number relativenumber     " Relative numbers on the side
set cursorline                " Underlines line cursor is on
set linebreak                 " Breaks lines at word (instead of the character)
set showbreak=+++             " Begin wrapped line with +++
set showmatch                 " Highlights matching paranthasis and brackets
set visualbell                " Doesn't beep when error happens
set wildmenu                  " Menu when tab completing commands
set lazyredraw                " Only redraw when needed

"--Searching--

set hlsearch                  " Highlight matches
set smartcase                 " Disable ignorecase when capitals present
set ignorecase                " Ignore the case
set incsearch                 " Search as characters are added

" Use <leader>SPACE to clear search highlight
nnoremap <leader><space> :nohlsearch<CR>

"--Tabs & spaces--

set tabstop=4                 "	Visual spaces per TAB
set shiftwidth=4              " Auto indent spaces
set softtabstop=4             " Spaces in tab when editing
set autoindent                " Auto indent when previous line is indented
set smartindent               " Indents after brackets and such

"--Folding--

set foldenable                " Enable folding
set foldlevelstart=10         " Most folds are open by default
set foldnestmax=10            " Don't have too many nested folds
set foldmethod=indent         " Fold based off of indentions

" Use space to toggle folds
nnoremap <leader>; za

"--Movement--

" Move vertically by visual line
" nnoremap j gj
" nnoremap k gk

" Disables arrow keys
nnoremap <Up> <nop>
nnoremap <Down> <nop>
nnoremap <Left> <nop>
nnoremap <Right> <nop>

inoremap <Up> <nop>
inoremap <Down> <nop>
inoremap <Left> <nop>
inoremap <Right> <nop>

" B and E move you to the beginning and the end of the line, instead of $ and ^
nnoremap B ^
nnoremap E $
nnoremap $ <nop>
nnoremap ^ <nop>

" jk is escape
inoremap jk <esc>
inoremap kj <esc>

set ruler

set undolevels=1000
