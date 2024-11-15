" ~/.vimrc - Vim Configuration File

" --- General Settings ---
set number            " Show line numbers
set relativenumber    " Show relative line numbers
set showcmd           " Show command in the last line
set cursorline        " Highlight the current line
set wildmenu          " Enhanced command-line completion
set hlsearch          " Highlight search results
set incsearch         " Incremental search
set ignorecase        " Case-insensitive search
set smartcase         " Override ignorecase if uppercase is used

" --- Indentation ---
set tabstop=4         " Number of spaces that a <Tab> represents
set shiftwidth=4      " Number of spaces for autoindent
set expandtab         " Use spaces instead of tabs
set autoindent        " Automatically indent new lines

" --- Appearance ---
set background=dark   " Set background for dark theme
colorscheme desert    " Set colorscheme
set guifont=Monospace\ 12 " Set font size (GUI only)

" --- Key Mappings ---
nnoremap <C-s> :w<CR>           " Ctrl+S to save file
nnoremap <C-q> :q!<CR>          " Ctrl+Q to quit without saving
inoremap jk <Esc>               " Quickly exit insert mode by typing 'jk'

" --- Plugin Manager (if using one) ---
" Example for Vim-Plug:
" call plug#begin('~/.vim/plugged')
" Plug 'tpope/vim-sensible'       " Collection of sensible Vim defaults
" Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
" call plug#end()

" --- File Management ---
set backup           " Keep a backup file
set undofile         " Enable undo history
set swapfile         " Enable swap files

" --- Other Handy Features ---
set mouse=a          " Enable mouse support
set clipboard=unnamedplus " Use system clipboard

" --- Startup Behavior ---
autocmd BufEnter * silent! lcd %:p:h  " Automatically set working directory
