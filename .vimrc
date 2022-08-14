set sts=4
set ts=4
set sw=4
set expandtab

set autoindent
set number

set formatoptions-=cro
set colorcolumn=80

set expandtab

" <Ctrl-l> redraws the screen and removes any search highlighting.
nnoremap <silent> <C-l> :nohl<CR><C-l>

set clipboard=unnamedplus

nnoremap <silent> <C-k> :let _s=@/ <Bar> :%s/\s\+$//e <Bar> :let @/=_s <Bar> :nohl <Bar> :unlet _s <CR>

nnoremap <silent> <C-x> dd
nnoremap <silent> <C-d> "kyy "kp
nnoremap <silent> <C-s> :w<CR>
inoremap <silent> <C-s> <ESC>:w<CR>
nnoremap <silent> <C-c> <ESC>

map [1;5D <C-Left>
map [1;5C <C-Right>

map [1;5A <C-Up>
map [1;5B <C-Down>

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

" vim-argwrap
let mapleader = ","
nnoremap <silent> <leader>a :ArgWrap<CR>

syntax on

set timeoutlen=1000 ttimeoutlen=0

" Enables filetype detection, loads ftplugin, and loads indent
" (Not necessary on nvim and may not be necessary on vim 8.2+)
filetype plugin indent on

"""""""""""""""""""""""""" PLUGINS CONFIGURATION """"""""""""""""""""""""""""""
packadd vim-packs

if empty( $NO_VIM_COLOUR )
    " COLORSCHEME
    packadd! gruvbox-material
    " For dark version.
    set background=dark
    " Set contrast.
    " Available values: 'hard', 'medium'(default), 'soft'
    let g:gruvbox_material_background = 'soft'
    " For better performance
    let g:gruvbox_material_better_performance = 1
    colorscheme gruvbox-material
endif
" STATUS BAR
packadd! lightline.vim
set laststatus=2

" packadd! vim-visual-multi
" packadd! splitjoin.vim

packadd! vim-argwrap

" FILETYPES 
packadd! vim-fish
packadd! vim-jsx-pretty
packadd! vim-elixir
