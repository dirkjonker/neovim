call plug#begin()

Plug 'rust-lang/rust.vim'
Plug 'flazz/vim-colorschemes'
Plug 'nightsense/stellarized'
Plug 'scrooloose/nerdtree'
Plug 'cohama/lexima.vim'

call plug#end()

set number
set background=dark

colorscheme stellarized_dark
" use uppercase write/quit
cnoreabbrev W w
cnoreabbrev Q q
