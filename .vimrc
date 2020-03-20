set sts=4
set ts=4
set sw=4

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

nnoremap <silent> <C-Left> <C-W><Left>
nnoremap <silent> <C-Right> <C-W><Right>

vnoremap <silent> <C-Left> <C-W><Left>
vnoremap <silent> <C-Right> <C-W><Right>

nnoremap <silent> <C-Up> <C-W><Up>
nnoremap <silent> <C-Down> <C-W><Down>

vnoremap <silent> <C-Up> <C-W><Up>
vnoremap <silent> <C-Down> <C-W><Down>

nnoremap / /\v
vnoremap / /\v

syntax on

set timeoutlen=1000 ttimeoutlen=0
