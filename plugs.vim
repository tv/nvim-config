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

" TypeScript
Plug 'HerringtonDarkholme/yats.vim'
Plug 'mhartington/nvim-typescript', {'do': './install.sh'}

" Java
Plug 'artur-shaik/vim-javacomplete2', { 'for': 'java' }

" JSON
Plug 'elzr/vim-json', { 'for': 'json' }

" CSS / html
Plug 'othree/html5.vim', { 'for': ['html', 'jinja'] }
Plug 'hail2u/vim-css3-syntax', { 'for': ['css', 'scss'] }

" YAML
Plug 'avakhov/vim-yaml', { 'for': 'yaml' }

" Changing files
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" Color
Plug 'morhetz/gruvbox'
Plug 'arakashic/nvim-colors-solarized'
Plug 'jacoborus/tender.vim'
Plug 'ayu-theme/ayu-vim'

" Golang
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' } ", { 'for': 'go' }
Plug 'zchee/deoplete-go', { 'for': 'go', 'do': 'make'}

" Presefy ng-stack things
Plug 'hashivim/vim-terraform', { 'for': 'terraform' }

" Rust
Plug 'rust-lang/rust.vim', { 'for': 'rust' }
Plug 'racer-rust/vim-racer', { 'for': 'rust' }

" Scala
Plug 'derekwyatt/vim-scala', { 'for': 'scala' }

" Api Blueprint
Plug 'kylef/apiblueprint.vim'

" CQL
Plug 'veegee/cql-vim'

" Haskell
Plug 'neovimhaskell/haskell-vim', { 'for': 'haskell' }

" GLSL
Plug 'tikhomirov/vim-glsl'

" Ansible
Plug 'chase/vim-ansible-yaml'

" Systemd
Plug 'towolf/systemd-vim-syntax'

" Dockerfile
Plug 'ekalinin/Dockerfile.vim'
