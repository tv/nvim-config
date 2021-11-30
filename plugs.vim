Plug 'tpope/vim-fugitive'
Plug 'jiangmiao/auto-pairs'
Plug 'godlygeek/tabular'
Plug 'itchyny/lightline.vim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'luochen1990/rainbow'
Plug 'editorconfig/editorconfig-vim'
Plug 'scrooloose/nerdcommenter'
Plug 'terryma/vim-multiple-cursors'
Plug 'sheerun/vim-polyglot'
Plug 'neovim/nvim-lspconfig'

" Focused writing
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'

Plug 'tpope/vim-surround'
Plug 'majutsushi/tagbar'
Plug 'easymotion/vim-easymotion'
Plug 'benekastah/neomake'
Plug 'matze/vim-move'

Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" JavaScript
Plug 'jaawerth/nrun.vim'
Plug 'othree/yajs.vim'
Plug 'carlitux/deoplete-ternjs',    { 'for': ['javascript', 'javascript.jsx'], 'do': 'npm install -g tern' }
Plug 'othree/jspc.vim',             { 'for': ['javascript', 'javascript.jsx'] }

" Changing files
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" Color
Plug 'morhetz/gruvbox'
Plug 'arakashic/nvim-colors-solarized'
Plug 'arcticicestudio/nord-vim'
Plug 'jacoborus/tender.vim'
Plug 'ayu-theme/ayu-vim'

" Golang
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' } ", { 'for': 'go' }
Plug 'zchee/deoplete-go', { 'for': 'go', 'do': 'make'}
