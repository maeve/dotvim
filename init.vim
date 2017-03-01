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
let g:netrw_liststyle=0 " thin

" git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" linting
Plug 'neomake/neomake'
autocmd! BufWritePost * Neomake " run on every save

" ruby/rails development
Plug 'tpope/vim-rails'
Plug 'vim-ruby/vim-ruby'

" colors
Plug 'chriskempson/base16-vim'

" terminal goodies
Plug 'kassio/neoterm'
let g:neoterm_repl_ruby = 'pry'

" change surroundings (brackets, parens, quotes, etc)
Plug 'tpope/vim-surround'

" auto-close code blocks
Plug 'tpope/vim-endwise'

" auto-close paired punctuation (brackets, parens, quotes)
Plug 'jiangmiao/auto-pairs'

" status line
Plug 'vim-airline/vim-airline'
let g:airline_powerline_fonts=1

Plug 'vim-airline/vim-airline-themes'
let g:airline_theme='base16'

" markdown live preview
function! BuildComposer(info)
  if a:info.status != 'unchanged' || a:info.force
    !cargo build --release
  endif
endfunction

Plug 'euclio/vim-markdown-composer', { 'do': function('BuildComposer') }

" coffeescript support
Plug 'kchmck/vim-coffee-script'

" testing support
Plug 'janko-m/vim-test'
let test#strategy = "neoterm" " execute test commands with neoterm

" syntax highlighting for liquid templates
Plug 'tpope/vim-liquid'

" vertical alignment on things like = signs
Plug 'junegunn/vim-easy-align'

call plug#end()

"
" Global
"

" line numbers
set number " display in the left gutter
set numberwidth=3 " width of line number gutter

" wrapping
set textwidth=0 " disable automatic wrapping in insert mode
set nowrap " disable automatic wrapping in view mode

set visualbell " quiet please

" colors
set background=dark
colorscheme base16-tomorrow-night

" show tab chars and trailing spaces
set listchars=tab:▷⋅,trail:·
set list

" tabs/indents should be 2 spaces
set tabstop=2 " render tab chars as two spaces
set softtabstop=2 " number of spaces that pressing tab counts for
set expandtab " only insert spaces, never tab chars
set shiftwidth=2 " indents (e.g. with '>') are two spaces

" make plugins like vim-gitgutter snappy
set updatetime=250 " ms after typing stops before writing swap file

" split windows
set splitbelow " open horizontal split below current window
set splitright " open vertical split to right of current window

" shared clipboard
if has("clipboard")
  set clipboard=unnamed " copy to the system clipboard

  if has("unnamedplus") " X11 support
    set clipboard+=unnamedplus
  endif
endif

" leaders
let mapleader=","
let maplocalleader="\\"

"
" Bindings
"

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

nnoremap <leader>x :sp<cr>
nnoremap <leader>v :vsp<cr>

" file explorer
noremap <leader>ff :e.<cr>
nmap <leader>fx <Plug>VinegarSplitUp
nmap <leader>fv <Plug>VinegarVerticalSplitUp

" terminal

" exit terminal mode
tnoremap <esc> <c-\><c-n>
" show/hide last open terminal
nnoremap <leader>ts :Ttoggle<cr>
" clear terminal
nnoremap <leader>tk :call neoterm#clear()<cr>
" kills the current job (send a <c-c>)
nnoremap <leader>tq :call neoterm#kill()<cr>
" repl support
nnoremap <leader>tE :TREPLSendFile<cr>
nnoremap <leader>te :TREPLSendLine<cr>
vnoremap <leader>te :TREPLSendSelection<cr>

" remove trailing spaces
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<cr>

" git status
nnoremap <leader>g :Gstatus<cr>

" testing
nnoremap <leader>r :TestNearest<cr>
nnoremap <leader>R :TestSuite<cr>
nnoremap <leader>l :TestLast<cr>

" clear highlighting
nnoremap <leader>k :noh<cr>

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)
