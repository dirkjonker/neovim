"#########################
" Plugins using vim-plug "
"#########################

call plug#begin()

Plug 'airblade/vim-gitgutter'
Plug 'cohama/lexima.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'w0rp/ale'

" language server protocol
" Plug 'autozimu/LanguageClient-neovim'

" language specific
Plug 'hashivim/vim-hashicorp-tools'
Plug 'rust-lang/rust.vim'

" themes
Plug 'ajmwagar/vim-deus'
Plug 'icymind/NeoSolarized'
Plug 'nightsense/stellarized'

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
colorscheme deus
let g:airline_theme = "deus"

" use uppercase write/quit
cnoreabbrev W w
cnoreabbrev Q q

" rust
let g:rustfmt_autosave = 1

" strip whitespace on save
let g:ale_fix_on_save = 1
let g:ale_pattern_options = {'\.\(json\|py\|sh\)$': {'ale_fixers': ['trim_whitespace', 'remove_trailing_lines']}}

let g:ale_fixers = {
\  'json': ['jq'],
\}

" mouse on iTerm
set mouse=a
