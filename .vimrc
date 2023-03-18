set ffs=unix,dos

set sts=4
set ts=4
set sw=4
set expandtab

" These two lines will fully disable any visual or noisy bell
" on both windows and linux. >:)
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=

set autoindent
set number

set formatoptions-=cro
set colorcolumn=80

set expandtab

" <Ctrl-l> redraws the screen and removes any search highlighting.
nnoremap <silent> <C-l> :nohl<CR><C-l>

" set clipboard=unnamedplus

nnoremap <silent> <C-k> :let _s=@/ <Bar> :%s/\s\+$//e <Bar> :let @/=_s <Bar> :nohl <Bar> :unlet _s <CR>

nnoremap <silent> <C-x> dd
nnoremap <silent> <C-d> "kyy "kp
nnoremap <silent> <C-s> :w<CR>
inoremap <silent> <C-s> <ESC>:w<CR>
nnoremap <silent> <C-c> <ESC>

nnoremap <silent> <C-Left>  <C-W><Left>
nnoremap <silent> <C-Right> <C-W><Right>
nnoremap <silent> <C-Up>    <C-W><Up>
nnoremap <silent> <C-Down>  <C-W><Down>
inoremap <silent> <C-Left>  <Esc><C-W><Left>
inoremap <silent> <C-Right> <Esc><C-W><Right>
inoremap <silent> <C-Up>    <Esc><C-W><Up>
inoremap <silent> <C-Down>  <Esc><C-W><Down>

nnoremap <silent> <C-S-Left> <C-W>H
nnoremap <silent> <C-S-Right> <C-W>L

nnoremap <silent> <C-S-Up> <C-W>K
nnoremap <silent> <C-S-Down> <C-W>J

" https://superuser.com/a/321726
"" replace currently selected text with default register
"" without yanking it
vnoremap <silent> p "_dP

nnoremap <silent> <C-j> :w !wl-copy<CR>
vnoremap <silent> <C-j> :'<,'>w !wl-copy<CR>

" vim-argwrap
let mapleader = ","
nnoremap <silent> <leader>a :ArgWrap<CR>

syntax on

set timeoutlen=1000 ttimeoutlen=0

" Enables filetype detection, loads ftplugin, and loads indent
" (Not necessary on nvim and may not be necessary on vim 8.2+)
filetype plugin indent on

set autoindent smartindent
set clipboard+=unnamedplus
set autoread

call plug#begin()
Plug 'jbyuki/instant.nvim'
call plug#end()
