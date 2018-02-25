if filereadable( $HOME . "/.exrc" )
    source ~/.exrc
endif

"### vim ###
set nocompatible

"### cursor ###
set whichwrap+=<,>,[,]
set ruler
set backspace=indent,eol,start

"### command line ###
set wildmenu
set wildmode=list:longest,full

"### list ###
set nolist
set listchars=tab:»-,trail:»,eol:¶

"### tab ###
set expandtab
set smarttab

"### indent ###
set cinoptions+=:0

"### history ###
set undolevels=1000
set history=1000

"### search ###
set smartcase
set hlsearch
set incsearch
set gdefault

"### buffer/file ###
set hidden
set confirm
set autoread
set nobackup
set noswapfile

"### tags ###
set tags=./tags;

"### keymap ###
inoremap <silent> jj <ESC>

"### view ###
set background=dark
" set nowrap
syntax on
set viewoptions=cursor
set scrolloff=8

"### encoding ###
set encoding=utf-8
set fileencodings=utf-8,ucs-bom,iso-2022-jp-3
            \,iso-2022-jp,eucjp-ms,euc-jisx0213,euc-jp,cp932,sjis
set fileformats=unix,dos,mac

"#### color ###
" set colorcolumn=80
set textwidth=80
colorscheme default
highlight SpecialKey ctermfg=darkgrey
highlight NonText ctermfg=darkgrey
highlight ColorColumn ctermbg=white

"### statusline ###
set laststatus=2
set statusline=%F%m%r%h%w%=[%c\,%l/%L][%{&ff}][%{&fenc}][%Y][%3p%%]

"### autocmd ###
" autocmd QuickFixCmdPost * silent copen
" autocmd BufWinLeave ?* silent mkview
" autocmd BufWinEnter ?* silent loadview

"### leader ###
nnoremap <Space><Space> :bnext<CR>

if filereadable( $HOME . "/.vimrc.local" )
    source ~/.vimrc.local
endif

" filetype
filetype plugin indent on
