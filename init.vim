"#########################
" Plugins using vim-plug "
"#########################

call plug#begin()

Plug 'airblade/vim-gitgutter'
Plug 'cohama/lexima.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'flazz/vim-colorschemes'
Plug 'nightsense/stellarized'
Plug 'scrooloose/nerdtree'
Plug 'rust-lang/rust.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'w0rp/ale'

call plug#end()

" line numbers
set number

" python virtualenv
let g:python3_host_prog = expand("~/.local/share/nvim/nvim-pyenv/bin/python")

"##############
" Colorscheme "
"##############
" proper terminal color support
set termguicolors

set background=dark
colorscheme stellarized_dark
let g:airline_theme = "zenburn"

" use uppercase write/quit
cnoreabbrev W w
cnoreabbrev Q q

" strip whitespace on save
let g:ale_fix_on_save = 1
let g:ale_pattern_options = {'\.\(json\|py\|sh\|vim\)$': {'ale_fixers': ['trim_whitespace', 'remove_trailing_lines']}}

" mouse on iTerm
set mouse=a
