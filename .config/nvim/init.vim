let mapleader=";"

" Plugin configuration
call plug#begin('~/.config/nvim/plug')
Plug 'vimwiki/vimwiki'
Plug 'preservim/nerdtree'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'mattn/emmet-vim'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'preservim/nerdcommenter'
"Plug 'tomasiser/vim-code-dark'
Plug 'dracula/vim', {'as':'dracula'}
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

" init autocmd
autocmd!
scriptencoding utf-8

" Colorscheme
colorscheme dracula
let g:dracula_colorterm=0

" fundamental settings
set hlsearch
set number
set fileencodings=utf-8
set encoding=utf-8
set title
set autoindent
set nobackup
set showcmd
set cmdheight=1
set laststatus=2
set scrolloff=10
set expandtab
set shell=zsh
set clipboard+=unnamedplus
set nocompatible
set bg=dark
set fileformat=unix
set nowrap

" Color
set termguicolors
set cursorline

" Syntax settings
syntax on 
filetype plugin on

" Don't redraw while executing macros
set lazyredraw


"" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" Nerdtree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" Auto Center
autocmd InsertEnter * norm zz

" Tab settings
set smarttab
set tabstop=4
set softtabstop=4
set expandtab
set shiftwidth=4

" Fix splitting
set splitbelow splitright

" Disables automatic commenting on newline
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" SHORTCUTS :
"[Control][b] - Move back one full screen
"[Control][f] - Move forward one full screen
"[Control][d] - Move forward 1/2 screen
"[Control][u] - Move back (up) 1/2 screen
" Use alt + hjkl to resize windows
nnoremap <M-j>    :resize -2<CR>
nnoremap <M-k>    :resize +2<CR>
nnoremap <M-h>    :vertical resize -2<CR>
nnoremap <M-l>    :vertical resize +2<CR> 

" Tab
nnoremap <Tab> gt
nnoremap <A-t> :tabnew e! 

" Center screen after search
nnoremap n nzzzv
nnoremap N Nzzzv

" Shortcut split navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Alias replace all to
nnoremap <A-s> :%s///<Left><Left><Left>

" Groff
nnoremap <C-c> :!groff<Space>-ms<Space>%<Space>-T<Space>pdf<Space>>
inoremap <leader>t .TL
inoremap <leader>a .AU
inoremap <leader>i .AI
inoremap <leader>p .PP
inoremap <leader>n .NH
inoremap <leader>s .SH

" Better tabbing
vnoremap < <gv
vnoremap > >gv

" NERDCommenter
let g:NERDCreateDefaultMappings = 1

" END OF SHORTCUTS 

" Vimwiki settings:
let g:vimwiki_list = [{'path': '~/Documents/Wiki'}]
