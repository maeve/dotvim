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
set number " display in the left gutter
set numberwidth=4 " width of left gutter
set ruler " display cursor position in status bar

" wrapping
set textwidth=0 " disable automatic wrapping in insert mode
set nowrap " disable automatic wrapping in view mode

" quiet please
set visualbell

" colors
colorscheme vividchalk

" show unwanted whitespace chars
set listchars=tab:▷⋅,trail:·
set list

" tabs/indents should be 2 spaces
set tabstop=2 " render tab chars as two spaces
set softtabstop=2 " number of spaces that pressing tab counts for
set expandtab " only insert spaces, never tab chars
set shiftwidth=2 " indents (e.g. with '>') are two spaces

"
" Bindings
"
let mapleader=","

" fuzzy find
map <leader>f :Files<cr>
map <leader>b :Buffers<cr>
map <leader>c :Commits<cr>

" split window navigation
nmap <leader><up> <c-w>k
nmap <leader><down> <c-w>j
nmap <leader><left> <c-w>h
nmap <leader><right> <c-w>l

" file explorer
map <leader>d :e.<cr>
map <leader>dx :Sexplore<cr>
map <leader>dv :Vexplore<cr>
