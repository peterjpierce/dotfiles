set nocompatible
filetype plugin indent on
syntax on

set number
set hlsearch
set incsearch
set cursorline
set foldenable

set shiftwidth=2
set tabstop=2
set softtabstop=2
set expandtab
set smarttab
set smartindent
set autoindent
set backspace=eol,start,indent

let mapleader = ","

"windowing and file tree (,w is much easier than ctrl-w)
nmap <leader>w <C-W>
let g:netrw_liststyle=3

"toggle relative line numbering to ,r or F8
function! NumberToggle()
  if(&relativenumber == 1)
    set number
  else
    set relativenumber
  endif
endfunc
nnoremap <F8> :call NumberToggle()<cr>
nmap <leader>r <F8>

"toggle colored bar at col=80 with ,v or F9(for Python PEP 8 compliance)
highlight ColorColumn ctermbg=4
function! LineLimitToggle()
  if(&colorcolumn == 80)
    set colorcolumn=0
  else
    set colorcolumn=80
  endif
endfunc
nnoremap <F9> :call LineLimitToggle()<cr>
nmap <leader>v <F9>

"other handy toggles
nmap <leader>l :set list!<cr>
nmap <leader>c :set cursorline!<cr>
set pastetoggle=<F12>

"special indent rules
if has("autocmd")
  autocmd FileType python setlocal ts=4 sts=4 sw=4
endif

"status line
set laststatus=2
set statusline=%t%m%r%h%w\ %y\ [%{strlen(&fenc)?&fenc:'none'},%{&ff}]\ [\%03.3b,\%02.2B]\ [c=%02v,l=%03l/%03L]\ [%p%%]

"some boxes, but not all, have NERD tree - uncomment if applicable
"call pathogen#runtime_append_all_bundles()
"nmap <leader>ne :NERDTree<cr>
