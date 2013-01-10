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
set background=dark " Eye frying prevention
set t_Co=256        " Force 256 colors
colorscheme fu


syntax on
filetype plugin indent on

