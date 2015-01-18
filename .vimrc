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
set cursorline
set t_Co=256

set mouse=a

set list
set listchars=tab:>-,trail:-,nbsp:%,extends:>,precedes:<

autocmd! FileType javascript setlocal shiftwidth=4 tabstop=4 softtabstop=4
autocmd! FileType php setlocal shiftwidth=4 tabstop=4 softtabstop=4

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
NeoBundle 'zenorocha/dracula-theme'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'elzr/vim-json'
NeoBundle 'tpope/vim-rails'
NeoBundle 'digitaltoad/vim-jade'
NeoBundle 'wavded/vim-stylus'
NeoBundle 'csscomb/vim-csscomb'
NeoBundle 'basyura/unite-rails'
NeoBundle 'kana/vim-submode'
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'mattn/emmet-vim'
NeoBundle 'wting/rust.vim'
NeoBundle 'Shougo/neocomplcache'
NeoBundle 'nathanaelkane/vim-indent-guides'
NeoBundle 'editorconfig/editorconfig-vim'

" neocomplcache {{{
let g:neocomplcache_enable_at_startup = 1
" ポップアップメニューで表示される候補の数
let g:neocomplcache_max_list = 1000
" 補完検索時に大文字・小文字を無視する
let g:neocomplcache_enable_ignore_case= 1
" 大文字が入力されている場合、大文字・小文字を区別する
let g:neocomplcache_enable_smart_case = 1

" emmet-vim key bind
" let g:user_emmet_leader_key='<c-t>'

" vim-indent-guides
let g:indent_guides_auto_colors=0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd   ctermbg=246
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven  ctermbg=241
let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_guide_size=1

" submode.vim
" http://d.hatena.ne.jp/thinca/20130131/1359567419
" ウィンドウサイズの変更キーを簡易化する
" [C-w],[+]または、[C-w],[-]
call submode#enter_with('winsize', 'n', '', '<C-w>>', '<C-w>>')
call submode#enter_with('winsize', 'n', '', '<C-w><', '<C-w><')
call submode#enter_with('winsize', 'n', '', '<C-w>+', '<C-w>-')
call submode#enter_with('winsize', 'n', '', '<C-w>-', '<C-w>+')
call submode#map('winsize', 'n', '', '>', '<C-w>>')
call submode#map('winsize', 'n', '', '<', '<C-w><')
call submode#map('winsize', 'n', '', '+', '<C-w>-')
call submode#map('winsize', 'n', '', '-', '<C-w>+')

" vim$B$K(Bcoffee$B%U%!%$%k%?%$%W$rG'<1$5$;$k(B
au BufRead,BufNewFile,BufReadPre *.coffee   set filetype=coffee
" $B%$%s%G%s%H$r@_Dj(B
autocmd FileType coffee     setlocal sw=2 sts=2 ts=2 et

" $B%$%s%G%s%H$N?<$5$K?'$rIU$1$k(B(indent_guides)
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

"set background=dark
colorscheme railscasts

" golang
set rtp+=/usr/local/go/misc/vim

filetype plugin indent on
filetype indent on
