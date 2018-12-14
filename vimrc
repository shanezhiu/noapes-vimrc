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
" golang programming
Plugin 'fatih/vim-go'
"source code browser plugin
Plugin 'taglist.vim'
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" A code-completion engine for Vim
" Plugin 'valloric/youcompleteme'
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
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
Plugin 'majutsushi/tagbar'
" precision colorscheme for the vim text editor
" Plugin 'altercation/vim-colors-solarized'
" Lean & mean status/tabline for vim that's light as air.
" Markdown Vim Mode
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
" Install L9 and avoid a Naming conflict if you've already installed a
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" Molokai color scheme for vim
Plugin  'tomasr/molokai'
" BETTER JSON FOR VIM
Plugin 'elzr/vim-json'
" indent yaml
Plugin 'avakhov/vim-yaml'
" syntax checking hacks for vim
Plugin 'scrooloose/syntastic'
" Zen coding
Plugin 'mattn/emmet-vim'
" Git integration
Plugin 'motemen/git-vim'
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
" syntastic check
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
" Markdow configurtion

