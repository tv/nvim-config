" style {
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
    set background=dark

    colorscheme gruvbox
" }
" dash {
    nnoremap <silent><buffer> K <esc>:Dash<CR>
" }

" Easier buffer movement {
    " Better have the up/down for moving lines
    "nnoremap <C-J> <C-W><C-J>
    "nnoremap <C-K> <C-W><C-K>
    nnoremap <C-L> <C-W><C-L>
    nnoremap <C-H> <C-W><C-H>
    " c-h is interprted as <bs> in nvim :(
    " Good thing that I'm not using backspace in normal mode
    nnoremap <bs> <C-W><C-H>
" }
" Disable arrow keys {
    noremap  <Up> ""
    noremap! <Up> <Esc>
    noremap  <Down> ""
    noremap! <Down> <Esc>
    noremap  <Left> ""
    noremap! <Left> <Esc>
    noremap  <Right> ""
    noremap! <Right> <Esc>
" }
" Tabularize {
    nmap <Leader>a& :Tabularize /&<CR>
    vmap <Leader>a& :Tabularize /&<CR>
    nmap <Leader>a= :Tabularize /=<CR>
    vmap <Leader>a= :Tabularize /=<CR>
    nmap <Leader>a: :Tabularize /:<CR>
    vmap <Leader>a: :Tabularize /:<CR>
    nmap <Leader>a:: :Tabularize /:\zs<CR>
    vmap <Leader>a:: :Tabularize /:\zs<CR>
    nmap <Leader>a, :Tabularize /,<CR>
    vmap <Leader>a, :Tabularize /,<CR>
    nmap <Leader>a<Bar> :Tabularize /<Bar><CR>
    vmap <Leader>a<Bar> :Tabularize /<Bar><CR>
" }
" Goyo {
    nmap <Leader>d :Goyo<CR>
    vmap <Leader>d :Goyo<CR>
" }

" FZF {
    let g:fzf_action = {
      \ 'ctrl-s': 'split',
      \ 'ctrl-v': 'vsplit'
      \ }
    map <c-p> :FZF<CR>
" }


" Tagbar {
    nmap <F8> :TagbarToggle<CR>
    nmap tb :TagbarToggle<cr>
" }
" Easymotion {
    map <Leader> <Plug>(easymotion-prefix)
" }

" Common {
    let g:tagbar_width = 30
    let g:move_key_modifier = 'C'
" }

" Filetypes {
"   JS {
        let g:syntastic_javascript_checkers = ['eslint']
"   }
"   Gradle {
        autocmd BufNewFile,BufRead *.gradle setfiletype groovy
"   }
"   Dust {
        autocmd BufNewFile,BufRead *.dust setfiletype html
"   }
"   SCSS {
        autocmd BufNewFile,BufRead *.scss set filetype=scss.css
"   }
"   Golang {
        let g:go_highlight_functions = 1
        let g:go_highlight_methods = 1
        let g:go_highlight_structs = 1
        let g:go_highlight_operators = 1
        let g:go_highlight_build_constraints = 1

        let g:tagbar_type_go = {
        \ 'ctagstype' : 'go',
        \ 'kinds'     : [
            \ 'p:package',
            \ 'i:imports:1',
            \ 'c:constants',
            \ 'v:variables',
            \ 't:types',
            \ 'n:interfaces',
            \ 'w:fields',
            \ 'e:embedded',
            \ 'm:methods',
            \ 'r:constructor',
            \ 'f:functions'
        \ ],
        \ 'sro' : '.',
        \ 'kind2scope' : {
            \ 't' : 'ctype',
            \ 'n' : 'ntype'
        \ },
        \ 'scope2kind' : {
            \ 'ctype' : 't',
            \ 'ntype' : 'n'
        \ },
        \ 'ctagsbin'  : 'gotags',
        \ 'ctagsargs' : '-sort -silent'
        \ }

        au FileType go set noexpandtab
        nmap <C-b> <Plug>LLBreakSwitch
"   }
" }
