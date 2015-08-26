set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
Plugin 'https://github.com/Shougo/vimproc.vim'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
Plugin 'user/L9', {'name': 'newL9'}
" NERDTREE
Plugin 'https://github.com/scrooloose/nerdtree.git'
Plugin 'https://github.com/evidens/vim-twig'
Plugin 'https://github.com/scrooloose/syntastic'
Plugin 'https://github.com/tpope/vim-commentary'
Plugin 'https://github.com/kchmck/vim-coffee-script'
Plugin 'https://github.com/altercation/vim-colors-solarized'
Plugin 'https://github.com/Valloric/MatchTagAlways'
Plugin 'https://github.com/digitaltoad/vim-jade'
Plugin 'https://github.com/elzr/vim-json'
Plugin 'https://github.com/Valloric/YouCompleteMe'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
set tabstop=2
set shiftwidth=2
set expandtab
set softtabstop=2
set shiftround
set ignorecase
set clipboard=unnamed
set mouse=nicr
set nobackup
set nowritebackup
set noswapfile
vnoremap < <gv 
vnoremap > >gv 

inoremap jj <Esc>

set nu
syn on

" Solarized stuff
syntax enable
let g:solarized_termtrans = 1
let g:solarized_termcolors=256
" let g:solarized_visibility = "high"
" let g:solarized_contrast = "high"
set background=dark
colorscheme solarized

" pathogen.vim
execute pathogen#infect()
syntax on
filetype plugin indent on

" Nerd Tree
let NERDTreeShowHidden=1

" auto command
au BufReadPost *.twig set syntax=html
autocmd FileType css set omnifunc=csscomplete#CompleteCSS - See more at: https://docs.oseems.com/general/application/vim/auto-complete-css#sthash.ymFOxkd1.dpuf
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags - See more at: https://docs.oseems.com/general/application/vim/auto-complete-html#sthash.QaV1q7Mh.dpuf
