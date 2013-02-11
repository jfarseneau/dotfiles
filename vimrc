set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle
call vundle#rc()

"
" Vundle bundles. Bundles of Vundle?
"

" Required
Bundle 'gmarik/vundle'
" Git Helper
Bundle 'tpope/vim-fugitive'
" Colors!
Bundle 'sickill/vim-monokai'

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
colorscheme Monokai

"
" Powerline Statusline
" Install instructions: http://lokaltog.github.com/powerline/overview.html
" 
set rtp+=/home/jfa/.local/lib/python2.7/site-packages/powerline/bindings/vim
let Powerline_symbols = 'fancy'

syntax on
filetype plugin indent on
