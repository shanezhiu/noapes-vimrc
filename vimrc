set nocompatible              " be iMproved, required
set number
syntax 	 enable
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" A tree explore plugin for vim
Plugin  'scrooloose/nerdtree'
" Vim plugin that displays tags in a window orderd by scope
Plugin 'majustsushi/tagbar'
" precision colorscheme for the vim text editor
" Plugin 'altercation/vim-colors-solarized'
" Lean & mean status/tabline for vim that's light as air.
" Install L9 and avoid a Naming conflict if you've already installed a
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" Molokai color scheme for vim
Plugin  'tomasr/molokai'
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

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
" Quick start TagBar
nmap <F8> :TagbarToggle<CR>
" vim-airline
let g:aireline_section_b = '%{strftime("%c")}'
let g:aireline_section_y = 'BN: %{bufnr("%")}'
let g:aireline#extensions#tabline#enabled = 1
let g:aireline#extensions#tabline#formatter = "jsformatter"
" Molokai
" let g:molokai_original = 1
let g:rehash256 = 1
