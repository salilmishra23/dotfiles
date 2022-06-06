call plug#begin()
" Theme
Plug 'folke/tokyonight.nvim'

" Lualine
Plug 'nvim-lualine/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons'

" Telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-file-browser.nvim'

" Treesitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
call plug#end()

syntax on
colorscheme tokyonight

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
set listchars=tab:▸\ ,eol:¬

" Highlight the current line
set cursorline

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fbf <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
nnoremap <leader>fcb <cmd>Telescope current_buffer_fuzzy_find<cr>

lua << END
require('lualine').setup{
    options = {
        theme = 'tokyonight'
    }
}
require('telescope').setup()
require('telescope').load_extension("file_browser")
END

