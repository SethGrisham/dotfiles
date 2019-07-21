let mapleader=";"             " Leader key is SEMICOLON

" --PLUGINS--
call plug#begin('~/.local/share/nvim/site/plugged')

Plug 'morhetz/gruvbox'
Plug 'itchyny/lightline.vim'
Plug 'junegunn/goyo.vim'

call plug#end()

"--Colors--

let g:lightline = {'colorscheme': 'gruvbox',}
let g:gruvbox_contrast_dark = 'hard'
colorscheme gruvbox
syntax enable
au BufNewFile,BufRead *.groff set filetype=groff

"--UI--

set number relativenumber     " Relative numbers on the side
set cursorline                " Underlines line cursor is on
set linebreak                 " Breaks lines at word (instead of the character)
set showbreak=-/-             " Begin wrapped line with +++
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

"--Splitting--
set splitright
set splitbelow

nnoremap <C-H> <C-W><C-H>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>

"--Movement--

" Move vertically by visual line
nnoremap j gj
nnoremap k gk

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

" Goyo toggled by leader g
nnoremap <leader>g :Goyo<cr>
set ruler

set undolevels=1000
