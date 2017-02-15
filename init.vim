"
" Plugins (via vim-plug)
"
call plug#begin('~/.local/share/nvim/plugged')

" fuzzy find
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

call plug#end()


"
" Bindings
"
let mapleader=","

" fuzzy find
map <leader>, :Files<cr>
