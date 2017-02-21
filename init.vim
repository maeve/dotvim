"
" Plugins (via vim-plug)
"
call plug#begin('~/.local/share/nvim/plugged')

" fuzzy find
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" Make fzf.vim use ripgrep instead of the silver searcher for :Ag
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

" linting
Plug 'neomake/neomake'
autocmd! BufWritePost * Neomake " run on every save

" rails
Plug 'tpope/vim-rails'

" colors
Plug 'tpope/vim-vividchalk'

call plug#end()

"
" Global
"

" line numbers
set number
set numberwidth=3

" do not wrap words
set textwidth=0 
set nowrap

" quiet please
set visualbell 

" colors
colorscheme vividchalk

"
" Bindings
"
let mapleader=","

" fuzzy find
map <leader>, :Files<cr>
map <leader>b :Buffers<cr>
map <leader>c :Commits<cr>

" split window navigation
nmap <leader><up> <c-w>k
nmap <leader><down> <c-w>j
nmap <leader><left> <c-w>h
nmap <leader><right> <c-w>l

" file explorer
map <leader>d :e.<cr>
map <leader>ds :Sexplore<cr>
map <leader>dv :Vexplore<cr>
