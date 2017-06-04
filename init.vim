syntax on
set hlsearch
set incsearch
set ruler
set showmatch
set viminfo='1000,f1,\"500,!
set encoding=utf-8
set termencoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8,sjis,shift-jis,euc-jp,utf-16,ascii,ucs-bom,cp932,iso-2022-jp
set expandtab
set shiftwidth=2
set softtabstop=2
set smartindent
set number
set showmode
set showcmd
set title
set noswapfile
set t_Co=256
set mouse=a
set list
set listchars=tab:»-,trail:·,nbsp:%,extends:>,precedes:<
set clipboard=unnamed

if has("multi_lang")
  language C
endif

let g:netrw_liststyle = 3

map j gj
map k gk
nmap <ESC><ESC> :nohlsearch<CR><ESC>

"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/Users/morishitter/./dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/Users/morishitter/./dein')
  call dein#begin('/Users/morishitter/./dein')

  " Let dein manage dein
  " Required:
  call dein#add('/Users/morishitter/./dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here:
  call dein#add('Shougo/unite.vim')
  call dein#add('Shougo/neocomplcache.vim')
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')
  call dein#add('flazz/vim-colorschemes')
  call dein#add('cohama/lexima.vim')
  call dein#add('editorconfig/editorconfig')
  call dein#add('elzr/vim-json')
  call dein#add('slim-template/vim-slim')
  call dein#add('bronson/vim-trailing-whitespace')
  call dein#add('airblade/vim-gitgutter')
  call dein#add('alvan/vim-closetag')

  " You can specify revision/branch/tag.
  call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------

set background=dark
colorscheme solarized
autocmd BufWritePre * :FixWhitespace
