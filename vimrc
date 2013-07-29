"""
" Maintainer:
"   Jean-Francois Arseneau
"   http://about.me/thejf - jf.arseneau@gmail.com
"
" Version:
"   1.1 - 2013/06/24
"
" Sections:
"   -> General
"   -> Vundle
"   -> File Options
"   -> Text Formatting
"   -> Keymapping
"   -> Visual Options
"   -> Powerline Statusline
"   -> SyntaxComplete
""

"""
" -> General
"""
set nocompatible
filetype off

set history=1000    " Lines of history for vim to remember
set autoread        
set encoding=utf-8  " UTF-8 support, 21st century-style

"""
" -> Vundle
"""
set rtp+=~/.vim/bundle/vundle
call vundle#rc()

" Required
Bundle 'gmarik/vundle'
" Git Helper
Bundle 'tpope/vim-fugitive'
" Colours!
Bundle 'sickill/vim-monokai'
Bundle 'SyntaxComplete'
Bundle 'othree/javascript-libraries-syntax.vim'
Bundle 'Syntastic'
Bundle 'scrooloose/nerdtree'

"""
" -> File Options
"""
set nobackup        " Let versioning tools take care of this
set nowritebackup
set noswapfile

"
" -> Text Formatting
"
set autoindent		" automatically indent new lines
set tabstop=2		" Reasonable tab length
set shiftwidth=2
set expandtab		" Make them spaces
set nosmarttab

"""
" -> Keymapping
"""  
nnoremap <C-t>      :tabnew<CR>
nnoremap <C-w>      :tabclose<CR>
inoremap <C-t>      <Esc>:tabnew<CR>
map      <C-n>      :NERDTreeToggle<CR> 
map <A-Left>   :gt<CR>

"""
" -> Visual Options
"""
set title           " Show me the title in the terminal
set ruler           " Show me where I am
set number          " Show me how far I am
set showmatch       " Show me how nested I am
set mat=5           " for this long
set laststatus=2
set statusline+=%F  " Show me what I am viewing
set background=dark " Eye frying prevention
set t_Co=256        " Force 256 colors
colorscheme Monokai

"""
" -> Powerline Statusline
" Install instructions: http://lokaltog.github.com/powerline/overview.html
"""
set rtp+=/usr/local/lib/python2.7/site-packages/powerline/bindings/vim
let Powerline_symbols = 'fancy'

"""
" -> SyntaxComplete
"""
if has("autocmd") && exists("+omnifunc")
  autocmd Filetype *
    \ if &omnifunc == "" |
    \   setlocal omnifunc=syntaxcomplete#Complete |
    \ endif
endif

syntax on
filetype plugin indent on
