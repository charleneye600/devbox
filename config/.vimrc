set nocompatible " be iMproved

" For vundle
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
" For fzf plugin
set rtp+=/usr/local/opt/fzf


call vundle#begin() " required




" Dependencies of snipmate
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "honza/vim-snippets"


" Molokai theme for Vim
Bundle 'tomasr/molokai'
" Navigation tree for Vim
Bundle 'scrooloose/nerdtree'
" Search Files for Vim
Bundle 'junegunn/fzf.vim'
" the_silver_searcher for Vim
Bundle 'rking/ag.vim'
" A Git wrapper for Vim
Bundle 'tpope/vim-fugitive'
" Ruby for Vim
Bundle 'vim-ruby/vim-ruby'
" wisely add 'end' in ruby
Bundle 'tpope/vim-endwise'
" Rails for Vim
Bundle 'tpope/vim-rails.git'
" GoLang for Vim
" Plugin 'fatih/vim-go'







" All of your Plugins must be added before the following line
call vundle#end()   " required


set tags=./tags;                 " Set tags directory
set autoindent                   " Auto indention should be on
filetype plugin indent on
syntax on                        " Enable syntax highlighting
filetype plugin indent on        " Enable filetype-specific indenting and plugins
syntax enable                    " Syntax highlighting and theme



" Configs to make Molokai look great
set background=dark
let g:molokai_original=1
let g:rehash256=1
set t_Co=256
colorscheme molokai

" Show trailing whitespace and spaces before a tab:
:highlight ExtraWhitespace ctermbg=red guibg=red
:autocmd Syntax * syn match ExtraWhitespace /\s\+$\| \+\ze\\t/


set nu                           " Show the number line
let mapleader=","                " Seting thte Leader Key
set hlsearch                     " Searching
set ts=2
set noexpandtab
set incsearch
set ignorecase
set smartcase
set laststatus=2
set cursorline                   " highlight the current line
set cuc cul                      " Highlight active column



" Remove highlights with leader + enter
nmap <Leader><CR> :nohlsearch<cr>
nmap <Leader>q :q!<cr>
nmap <Leader>w :w<cr>
nmap <Leader>wq :wq!<cr>
nmap <Leader>s <C-W><C-W>

" ================== NERDTree Configurations ====================
" Configure the menu navigator for Linux
" let g:NERDTreeDirArrowExpandable = '>'
" let g:NERDTreeDirArrowCollapsible = 'v'

" solve the ^G in the NerdTree explorer
let g:NERDTreeNodeDelimiter = "\u00a0"
"设定 NERDTree 视窗大小
let g:NERDTreeWinSize = 30
map <F8> :NERDTree <CR>
map <leader>n :NERDTreeToggle<CR>
" 打开vim时如果没有文件自动打开NERDTree
autocmd vimenter * if !argc()|NERDTree|endif
" 过滤所有.pyc文件不显示
let NERDTreeIgnore = ['\.pyc$', '\.swp', '\.swo', '\.vscode', '__pycache__']
" 显示隐藏文件
let NERDTreeShowHidden=1
" 不显示隐藏文件
" let g:NERDTreeHidden=0
" ===============================================================



" ==============    FZF Search Files Vim Plugin    ==============
nmap <Leader>b :Buffers<CR>
nmap <Leader>f :Files<CR>
" nmap <Leader>t :Tags<CR>
" ===============================================================



" ==============       Search keyword       =====================
let g:ackprg = 'ag --nogroup --nocolor --column'
" for easy using sliver search
map <leader>g :Ag
" ===============================================================

