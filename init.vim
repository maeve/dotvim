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

" terminal goodies
Plug 'kassio/neoterm'
let g:neoterm_repl_ruby = 'pry'

" change surroundings (brackets, parens, quotes, etc)
Plug 'tpope/vim-surround'

" auto-close code blocks
Plug 'tpope/vim-endwise'

" auto-close paired punctuation (brackets, parens, quotes)
Plug 'jiangmiao/auto-pairs'

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

set visualbell " quiet please

" colors
colorscheme vividchalk

" show tab chars and trailing spaces
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
noremap <leader><leader> :Files<cr>
noremap <leader>b :Buffers<cr>
noremap <leader>c :Commits<cr>

" split window navigation
nnoremap <leader><left> <c-w>h
nnoremap <leader><down> <c-w>j
nnoremap <leader><up> <c-w>k
nnoremap <leader><right> <c-w>l

tnoremap <leader><left> <c-\><c-n><c-w>h
tnoremap <leader><down> <c-\><c-n><c-w>j
tnoremap <leader><up> <c-\><c-n><c-w>k
tnoremap <leader><right> <c-\><c-n><c-w>l

" file explorer
noremap <leader>d :e.<cr>
noremap <leader>dx :Sexplore<cr>
noremap <leader>dv :Vexplore<cr>

" terminal

" exit terminal mode
tnoremap <esc> <c-\><c-n>
" show/hide last open terminal
nnoremap <leader>ts :Ttoggle<cr>
" clear terminal
nnoremap <leader>tc :call neoterm#clear()<cr>
" kills the current job (send a <c-c>)
nnoremap <leader>tq :call neoterm#kill()<cr>
" repl support
nnoremap <leader>tf :TREPLSendFile<cr>
nnoremap <leader>te :TREPLSendLine<cr>
vnoremap <leader>te :TREPLSendSelection<cr>
