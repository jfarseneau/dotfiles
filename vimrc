set nocompatible

" 
" Pathogen, for plugin management
"
call pathogen#infect()

"
" Text Formatting
"
set autoindent		" automatically indent new lines
set tabstop=4		" Reasonable tab length
set shiftwidth=4
set expandtab		" Make them spaces
set nosmarttab
set textwidth=80    " Old school terminal rules

"
" Visual Options
"
set ruler           " Show me where I am
set number          " Show me how far I am
set showmatch       " Show me how nested I am
set mat=5           " for this long
set laststatus=2
set statusline+=%F  " Show me what I am viewing
set background=dark " Eye frying prevention
set t_Co=256        " Force 256 colors
colorscheme fu

"
" Powerline Statusline
" Install instructions: http://lokaltog.github.com/powerline/overview.html
" 
python from powerline.ext.vim import source_plugin; source_plugin()
let Powerline_symbols = 'fancy'

syntax on
filetype plugin indent on

