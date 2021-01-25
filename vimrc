" VIMRC ===================================================

" use Vim mode instead of pure Vi, it must be the first instruction
set nocompatible



" VIM-PLUG PLUGIN MANAGER =================================

call plug#begin()

Plug 'sickill/vim-monokai'
"Plug 'ryanoasis/vim-devicons'
Plug 'itchyny/lightline.vim'
Plug 'mengelbrecht/lightline-bufferline'
Plug 'tpope/vim-fugitive'
"Plug 'preservim/nerdtree'
Plug 'vifm/vifm.vim'
Plug 'tpope/vim-surround'
Plug 'godlygeek/tabular'
Plug 'mattn/emmet-vim'
Plug 'psliwka/vim-smoothie'

" Automatically install missing plugins on startup
"if !empty(filter(copy(g:plugs), '!isdirectory(v:val.dir)'))
"    autocmd VimEnter * PlugInstall | q
"endif

call plug#end()



" COMMON SETTINGS =========================================

" Set backup and swap directories (these directories have to exist)
set backupdir=~/.cache/vim/backup
set dir=~/.cache/vim/swap

" Change working directory to open buffer
set autochdir

" Encoding
set encoding=utf-8

" Redraw only when we need to
set lazyredraw

" Turn on syntax highlighting
syntax enable

" Enable color scheme
colorscheme monokai

" Display line numbers on the left
set number

" Enable cursor line
set cursorline

" Always show at least x lines above / below the cursor
set scrolloff=3

" Enable autocomplete menu
set wildmenu

" Show matching parenthesis while cursor passe
set showmatch

" Show the current normal mode command in the status bar
set showcmd

" Mute sounds
set visualbell


" Enable search result highlighting
set hlsearch

" Search as characters are entered
set incsearch


" Enable lightline - always display the status line, even if only one window is displayed #lightline
set laststatus=2

" Show tabline and disable the GUI tabline #lightline-bufferline
let g:lightline = {
    \ 'colorscheme': 'one',
    \ 'separator': {'left': "\ue0b0", 'right': " "},
    \ 'subseparator': { 'left': " ", 'right': " "},
    \ 'active': {
    \   'left': [ [ 'mode', 'paste' ], [ 'readonly', 'filename', 'modified' ] ]
    \ },
    \ 'tabline': {
    \   'left': [ ['buffers'] ],
    \   'right': [ ['showbranch'] ]
    \ },
    \ 'component_expand': {
    \   'buffers': 'lightline#bufferline#buffers'
    \ },
    \ 'component_type': {
    \   'buffers': 'tabsel'
    \ },
    \   'component_function': {
    \     'showbranch': 'ShowGitBranch',
    \ },
\ }
let g:lightline#bufferline#show_number=1
let g:lightline#bufferline#number_separator='|'
let g:lightline#bufferline#enable_devicons=1
set showtabline=2  " Show bufferline / tabline
set guioptions-=e  " Don't use GUI tabline

" vim-devicon setup for lightline should be included if needed

" Show git branch if the current file belongs to a repository
function ShowGitBranch()
    if exists("b:git_dir")
        return "\ue0a0 " . fugitive#head()
    else
        return ""
    endif
endfunction



" KEY MAPPINGS ============================================

" Key mappings for NERDTree #nerdtree
"nnoremap <leader>n :NERDTreeFocus<CR>
"nnoremap <C-n> :NERDTreeMirror<CR>:NERDTreeFocus<CR>
"nnoremap <C-t> :NERDTreeToggle<CR>
"nnoremap <C-f> :NERDTreeFind<CR>

" Key mappings for Vifm #vifm
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTreeMirror<CR>:NERDTreeFocus<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>



" FOLDING SETTINGS ========================================

" Enable folding
set foldenable

" Set width of the sidebar for folding structure marks
set foldcolumn=3
