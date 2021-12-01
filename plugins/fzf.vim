Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

let FZF_DEFAULT_COMMAND='ag -g ""' 
let g:fzf_action = {
\ 'ctrl-s': 'split',
\ 'ctrl-v': 'vsplit'
\ }
map <c-p> :FZF<CR>

nnoremap <leader>e :call fzf#vim#ag(expand('<cword>'))<cr>
