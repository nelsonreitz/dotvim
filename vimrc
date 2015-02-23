execute pathogen#infect()
syntax on
filetype plugin indent on

syntax enable
set background=dark
colorscheme gruvbox

set hidden
set number

" Disable bells
autocmd! GUIEnter * set vb t_vb=

if has('gui_running')
  set guifont=DejaVu\ Sans\ Mono\ 11,Monaco:h15
endif

" Indentation
set ts=4 sts=4 sw=4 expandtab

" Use the same symbols as TextMate for tabstops and EOLs
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
set list

if has("gui_running")
  " GUI is running or is about to start.
  " Maximize gvim window (for an alternative on Windows, see simalt below).
  set lines=999 columns=999
else
  " This is console Vim.
  if exists("+lines")
    set lines=50
  endif
  if exists("+columns")
    set columns=100
  endif
endif

" NERDTree
autocmd vimenter * NERDTree | wincmd p

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

let g:NERDTreeDirArrows=0

