"
" Plugins (via vim-plug)
"
call plug#begin('~/.local/share/nvim/plugged')

" fuzzy find
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" Use ripgrep instead of the silver searcher
command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always '.shellescape(<q-args>), 1,
  \   <bang>0 ? fzf#vim#with_preview('up:60%')
  \           : fzf#vim#with_preview('right:50%:hidden', '?'),
  \   <bang>0)

" file explorer
Plug 'tpope/vim-vinegar'
let g:netrw_liststyle = 3

" git
Plug 'tpope/vim-fugitive'

call plug#end()


"
" Bindings
"
let mapleader=","

" fuzzy find
map <leader>, :Files<cr>
map <leader>b :Buffers<cr>
map <leader>c :Commits<cr>
