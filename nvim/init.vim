call plug#begin('~/.local/share/nvim/plugged')

" Status Bar
Plug 'bling/vim-airline'

" Color Scheme
Plug 'morhetz/gruvbox'

" Auto close parens, braces, brackets, etc
Plug 'jiangmiao/auto-pairs'

call plug#end()

syntax on
let g:gruvbox_contrast_dark='dark'
colorscheme gruvbox

let mapleader=","

" quickly cancel search highlighting
nnoremap <leader><space> :nohlsearch<cr>

" formatting
set tabstop=4
set shiftwidth=4
set expandtab
filetype indent on
set autoindent

set number
set relativenumber

" Copy from and to anywhere
set clipboard+=unnamedplus

" Enable mouse in all modes
set mouse=a

set noswapfile

" Display hidden characters
set list
set listchars=eol:¬

" Highlight the current line
set cursorline
