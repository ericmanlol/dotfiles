call plug#begin('~/vim/plugged')

Plug 'morhetz/gruvbox'

call plug#end()


" general
set nocompatible
filetype plugin indent on
set ttyfast
set number
set laststatus=2

" color stuff
colorscheme gruvbox

" Leader Key Mappings
let mapleader = ","
let g:mapleader = ","
let maplocalleader = ","
let g:maplocalleader = ","

" <Leader>``: Force quit all
nnoremap <Leader>`` :qa!<cr>

" <Leader>1: Toggle between paste mode
nnoremap <silent> <Leader>1 :set paste!<cr>

" Toggle line numbers and fold column for easy copying:
nnoremap <F2> :set nonumber!<CR>:set foldcolumn=0<CR>
