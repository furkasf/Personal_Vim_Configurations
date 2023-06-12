syntax on

set fileformat=unix
set encoding=UTF-8

set tabstop=2
set softtabstop=2
set shiftwidth=2
set autoindent
set smartindent
set smarttab
set expandtab
set nowrap
set list
set listchars=eol:.,tab:>-,trail:~,extends:>,precedes:<

set cursorline
set number
set relativenumber
set scrolloff=8
set signcolumn=yes
set showcmd
" set noshowmode
set conceallevel=1
set shortmess+=c
set formatoptions-=cro

set ignorecase
set smartcase
set incsearch
set hlsearch
nnoremap <CR> :noh<CR><CR>:<backspace>

inoremap jj <Esc>

if filereadable(expand('~/.vim/vimrc.plug'))
  source ~/.vim/vimrc.plug
  source ~/.vim/lsp.vim
endif

"gruvbox configs

colorscheme gruvbox

let g:gruvbox_italic = 1

let g:gruvbox_contrast_dark = 'hard'
let g:gruvbox_contrast_light = 'hard'

let g:gruvbox_background = 'dark'
let g:gruvbox_matching = 'purple'

let g:gruvbox_transparent_bg = 1
let g:gruvbox_sidebar = 'medium'
let g:gruvbox_invert_selection = 1
let g:gruvbox_diff_colors = ['yellow', 'purple']

let g:gruvbox_indent_guides = 'bg0'
let g:gruvbox_vertical_split = 'dark3'
let g:gruvbox_line_number = 'bg2'
let g:gruvbox_cursorline = 'bg1'
let g:gruvbox_insert_visual_cursorline = 1
let g:gruvbox_insert_cursorline = 'bg2'

let g:gruvbox_trailing_spaces = 'red'
let g:gruvbox_selection = 'green'
let g:gruvbox_folded = 'blue'
let g:gruvbox_diff_remove = 'red'
let g:gruvbox_diff_add = 'green'

set background=dark

" nerdtree configs
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" C# lsp server omnisharp configs

let g:OmniSharp_server_stdio = 0

let g:OmniSharp_selector_ui = 'fzf'

inoremap <expr> <Tab> pumvisible() ? '<C-n>' : getline('.')[col('.')-2] =~# '[[:alnum:].-_#$]' ? '<C-x><C-o>' : '<Tab>'

nnoremap <C-o><C-u> :OmniSharpFindUsages<CR>
nnoremap <C-o><C-d> :OmniSharpGotoDefinition<CR>
nnoremap <C-o><C-d><C-p> :OmniSharpPreviewDefinition<CR>
nnoremap <C-o><C-r> :!dotnet run

let g:OmniSharp_server_type = 'roslyn'
let g:OmniSharp_prefer_global_sln = 1
