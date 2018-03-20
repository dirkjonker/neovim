"#########################
" Plugins using vim-plug "
"#########################

call plug#begin()

Plug 'airblade/vim-gitgutter'

" auto closes parens
Plug 'cohama/lexima.vim'

Plug 'editorconfig/editorconfig-vim'
Plug 'scrooloose/nerdtree'

" awesome paren/quote/etc handling
Plug 'tpope/vim-surround'
" make sure you can use . to repeat surround cmds
Plug 'tpope/vim-repeat'

" linter handler
Plug 'w0rp/ale'

" language server protocol
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }
Plug 'roxma/nvim-completion-manager'

" language specific
Plug 'hashivim/vim-hashicorp-tools'
Plug 'rust-lang/rust.vim'

" themes
Plug 'ajmwagar/vim-deus'
Plug 'icymind/NeoSolarized'
Plug 'nightsense/stellarized'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

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
let g:ale_fixers = {
    \  'json': ['jq'],
    \  'groovy': ['remove_trailing_lines', 'trim_whitespace'],
    \  'yaml': ['remove_trailing_lines', 'trim_whitespace'],
    \}

let g:ale_fix_on_save = 1

let g:LanguageClient_serverCommands = {
    \ 'rust': ['rustup', 'run', 'stable', 'rls'],
    \ 'python': ['~/.local/share/nvim/nvim-pyenv/bin/pyls'],
    \ }

nnoremap <silent> K :call LanguageClient_textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient_textDocument_definition()<CR>

" mouse on iTerm
set mouse=a
