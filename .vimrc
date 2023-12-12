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
set colorcolumn=100

set expandtab

" <Ctrl-l> redraws the screen and removes any search highlighting.
nnoremap <silent> <C-l> :nohl<CR><C-l>

" set clipboard=unnamedplus

nnoremap <silent> <C-k> :let _s=@/ <Bar> :%s/\s\+$//e <Bar> :let @/=_s <Bar> :nohl <Bar> :unlet _s <CR>

" nnoremap <silent> <C-x> dd
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

" remove all whitespace
nnoremap <C-K> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>

" vim-argwrap
let mapleader = "\\"
nnoremap <silent> <leader>a :ArgWrap<CR>

syntax on

set timeoutlen=1000 ttimeoutlen=0

" Enables filetype detection, loads ftplugin, and loads indent
" (Not necessary on nvim and may not be necessary on vim 8.2+)
filetype plugin indent on

set autoindent smartindent
set clipboard+=unnamedplus
set autoread

" autoreload on .vimrc change
augroup myvimrc
    au!
    au BufWritePost .vimrc,_vimrc,vimrc,.gvimrc,_gvimrc,gvimrc so $MYVIMRC | if has('gui_running') | so $MYGVIMRC | endif
augroup END

" IdeaVim
set incsearch
" set multiplecursors

" plugins
call plug#begin()
Plug 'junegunn/vim-easy-align'

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" YCM
Plug 'ycm-core/YouCompleteMe'

" Mapping to close the completion menu (default <C-y>)
let g:ycm_key_list_stop_completion = ['<C-x>']

" Set filetypes where YCM will be turned on
let g:ycm_filetype_whitelist = { 'cpp':1, 'h':2, 'hpp':3, 'c':4, 'cxx':5 }

" Close preview window after completing the insertion
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_autoclose_preview_window_after_completion = 1

let g:ycm_confirm_extra_conf = 0                 " Don't confirm python conf
let g:ycm_always_populate_location_list = 1      " Always populae diagnostics list
let g:ycm_enable_diagnostic_signs = 1            " Enable line highligting diagnostics
let g:ycm_open_loclist_on_ycm_diags = 1          " Open location list to view diagnostics

let g:ycm_max_num_candidates = 20                " Max number of completion suggestions 
let g:ycm_max_num_identifier_candidates = 10     " Max number of identifier-based suggestions
let g:ycm_auto_trigger = 1                       " Enable completion menu
let g:ycm_show_diagnostic_ui = 1                 " Show diagnostic display features
let g:ycm_error_symbol = '#'                    " The error symbol in Vim gutter
let g:ycm_enable_diagnostic_signs = 1            " Display icons in Vim's gutter, error, warnings
let g:ycm_enable_diagnostic_highlighting = 1     " Highlight regions of diagnostic text
let g:ycm_echo_current_diagnostic = 1            " Echo line's diagnostic that cursor is on
let g:ycm_max_diagnostics_to_display = 0

" nerdtree
Plug 'preservim/nerdtree'

" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

execute "set <M-1>=\e1"
nnoremap <M-1> :NERDTreeToggle \| wincmd p<CR>

Plug 'Donaldttt/fuzzyy'

" Syntax
Plug 'khaveesh/vim-fish-syntax'

call plug#end()
