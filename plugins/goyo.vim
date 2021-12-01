Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'

let g:goyo_width=100
nmap <Leader>d :Goyo<CR>
vmap <Leader>d :Goyo<CR>
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!
