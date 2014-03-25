syntax on
set hlsearch
set incsearch
set ruler
set showmatch
set viminfo='1000,f1,\"500,!
set encoding=utf-8
set termencoding=utf-8
set fileencoding=utf-8
set fileencodings=iso-2022-jp,euc-jp,utf-8,ucs2le,ucs-2
set expandtab
set shiftwidth=2
set softtabstop=2
set smartindent
set number
set showmode
set showcmd
set title
set noswapfile
set cursorline
set t_Co=256

set list
set listchars=tab:>-,trail:-,nbsp:%,extends:>,precedes:<

let g:netrw_liststyle = 3

map j gj
map k gk

imap {} {}<Left>
imap [] []<Left>
imap () ()<Left>
imap <> <><Left>
imap "" ""<Left>
imap '' ''<Left>
nmap <ESC><ESC> :nohlsearch<CR><ESC>
nmap <silent> <C-e>      :NERDTreeToggle<CR>
let g:NERDTreeShowHidden=1
let g:NERDTreeMinimalUI=1
let g:NERDTreeDirArrows=0
let g:NERDTreeShowBookmarks=1
let g:NERDTreeMouseMode=2
"autocmd vimenter * NERDTree

set nocompatible
filetype off

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim
  call neobundle#rc(expand('~/.vim/bundle/'))
endif

NeoBundle 'Shougo/neobundle.vim'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'Shougo/vimproc'
NeoBundle 'Shougo/vimshell'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'ujihisa/unite-colorscheme'
NeoBundle 'Shougo/neocomplcache'
NeoBundle 'Shougo/neosnippet'
NeoBundle 'jpalardy/vim-slime'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'myhere/vim-nodejs-complete'
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'tpope/vim-endwise'
NeoBundle 'jpo/vim-railscasts-theme'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'Markdown'
NeoBundle 'suan/vim-instant-markdown'
NeoBundle 'nathanaelkane/vim-indent-guides'
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'elzr/vim-json'
NeoBundle 'tpope/vim-rails'
NeoBundle 'digitaltoad/vim-jade'
NeoBundle 'wavded/vim-stylus'
NeoBundle 'nathanaelkane/vim-indent-guides'
NeoBundle 'csscomb/vim-csscomb'

" vim-indent-guides
let g:indent_guides_auto_colors=0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd   ctermbg=110
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven  ctermbg=140
let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_guide_size=1


" vimにcoffeeファイルタイプを認識させる
au BufRead,BufNewFile,BufReadPre *.coffee   set filetype=coffee
" インデントを設定
autocmd FileType coffee     setlocal sw=2 sts=2 ts=2 et

" インデントの深さに色を付ける(indent_guides)
let g:indent_guides_start_level=2
let g:indent_guides_auto_colors=0
let g:indent_guides_enable_on_vim_startup=0
let g:indent_guides_color_change_percent=20
let g:indent_guides_guide_size=1
let g:indent_guides_space_guides=1
hi IndentGuidesOdd  ctermbg=235
hi IndentGuidesEven ctermbg=237
au FileType coffee,ruby,javascript,python IndentGuidesEnable
nmap <silent><Leader>ig <Plug>IndentGuidesToggle

let g:vim_json_syntax_conceal = 0

colorscheme railscasts

" golang
set rtp+=/usr/local/go/misc/vim

filetype plugin indent on
filetype indent on
syntax on
