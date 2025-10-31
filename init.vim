" General settings
set mouse=a
set termguicolors

let s:uname = system("uname")

if has ('x') && has ('gui') " On Linux use + register for copy-paste
    set clipboard=unnamedplus
elseif has('unix')          " If commandline unix
    set clipboard=unnamedplus
elseif has ('gui')          " On mac and Windows, use * register for copy-paste
    set clipboard=unnamed
endif

set history=1000
set spell
set hidden

if isdirectory($HOME . '~/.local/share/nvim/backup') == 0
  :silent !mkdir -p ~/.local/share/nvim/backup >/dev/null 2>&1
endif
set backup
set backupdir=~/.local/share/nvim/backup//

set tabpagemax=15               " Only show 15 tabs
set showmode                    " Display the current mode

set cursorline                  " Highlight current line

highlight clear SignColumn      " SignColumn should match background for
                                " things like vim-gitgutter
set ignorecase
set smartcase

set colorcolumn=90
set nu rnu                      " Line numbers on
set showmatch                   " Show matching brackets/parenthesis
set scrolljump=5                " Lines to scroll when cursor leaves screen
set scrolloff=3                 " Minimum lines to keep above and below cursor
set autoindent                  " Indent at the same level of the previous line
set shiftwidth=2                " Use indents of 4 spaces
set expandtab                   " Tabs are spaces, not tabs
set tabstop=2                   " An indentation every four columns
set softtabstop=2               " Let backspace delete indent
set timeoutlen=1000 ttimeoutlen=0
set signcolumn=yes:1

set list
set listchars=tab:▸\ ,trail:·

" Map leader to ,
let mapleader = ','

" Easier buffer movement
nnoremap <C-J> <C-W>j<C-W>_
nnoremap <C-K> <C-W>k<C-W>_
nnoremap <C-L> <C-W>l<C-W>_
nnoremap <C-H> <C-W>h<C-W>_

" Adjust viewports to the same size
map <Leader>= <C-w>=

nmap <leader>ve :edit ~/.config/nvim/init.vim<cr>
nmap <leader>vr :source ~/.config/nvim/init.vim<cr>

let g:solarized_termtrans=1
let g:solarized_contrast="high"
let g:solarized_visibility="high"

" Allow gf to open non-existing files
map gf :edit <cfile><cr>

nnoremap <silent> <Esc><Esc> <Esc>:nohlsearch<CR><Esc>

" Disable arrow keys
noremap  <Up> ""
noremap! <Up> <Esc>
noremap  <Down> ""
noremap! <Down> <Esc>
noremap  <Left> ""
noremap! <Left> <Esc>
noremap  <Right> ""
noremap! <Right> <Esc>

"--------------------------------------------------------------------------
" Plugins
"--------------------------------------------------------------------------

" Automatically install vim-plug
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin(data_dir . '/plugins')

source ~/.config/nvim/plugins/auto-pairs.vim
"source ~/.config/nvim/plugins/coc.vim
source ~/.config/nvim/plugins/editorconfig.vim
source ~/.config/nvim/plugins/go.vim
source ~/.config/nvim/plugins/goyo.vim
source ~/.config/nvim/plugins/fzf.vim
source ~/.config/nvim/plugins/fugitive.vim
source ~/.config/nvim/plugins/lightline.vim
source ~/.config/nvim/plugins/language_server_protocol.vim
source ~/.config/nvim/plugins/move.vim
source ~/.config/nvim/plugins/markdown.vim
source ~/.config/nvim/plugins/multiple-cursors.vim
source ~/.config/nvim/plugins/nerdcommenter.vim
source ~/.config/nvim/plugins/nvim-cmp.vim
source ~/.config/nvim/plugins/polyglot.vim
source ~/.config/nvim/plugins/rainbow.vim
source ~/.config/nvim/plugins/rego.vim
source ~/.config/nvim/plugins/surround.vim
source ~/.config/nvim/plugins/tabular.vim
source ~/.config/nvim/plugins/tagbar.vim
source ~/.config/nvim/plugins/terraform.vim
source ~/.config/nvim/plugins/theme.vim
source ~/.config/nvim/plugins/treesitter.vim
source ~/.config/nvim/plugins/lua_snip.vim

if filereadable(glob("~/.config/nvim/local.vim"))
  source ~/.config/nvim/local.vim
endif

"runtime plugs.vim
call plug#end()
doautocmd User PlugLoaded

set rtp+=/usr/local/Cellar/fzf/HEAD

" Host specific configs
if filereadable(glob("~/.vimrc.local")) 
  source ~/.vimrc.local
endif
