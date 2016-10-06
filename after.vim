" style {
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
    set background=dark

    let g:gruvbox_contrast_dark="medium"
    let g:gruvbox_italic=1

    colorscheme gruvbox
    nnoremap <silent> <Esc><Esc> <Esc>:nohlsearch<CR><Esc>
" }
" rainbow_parentheses {
    let g:rainbow_active = 1
" }
" neomake {
"   Filetype specific changes at the bottom of the file
    autocmd! BufWritePost * Neomake
" }
" deoplete {
    let g:deoplete#enable_at_startup = 1
    let g:deoplete#auto_completion_start_length = 1
    let g:deoplete#enable_ignore_case = 1
    let g:deoplete#enable_auto_close_preview = 1
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
    let FZF_DEFAULT_COMMAND='ag -g ""' 
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
        let g:neomake_javascript_enabled_makers = ['eslint']
        autocmd FileType javascript setlocal omnifunc=tern#Complete 
"   }
"   Java {
        autocmd FileType java setlocal omnifunc=javacomplete#Complete
        nmap <F4> <Plug>(JavaComplete-Imports-Add)
        imap <F4> <Plug>(JavaComplete-Imports-Add)
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
        autocmd BufNewFile,BufRead *.go setfiletype go
        au FileType go set noexpandtab

        "let g:go_highlight_functions = 1
        "let g:go_highlight_methods = 1
        "let g:go_highlight_structs = 1
        "let g:go_highlight_interfaces = 1
        "let g:go_highlight_operators = 1
        "let g:go_highlight_build_constraints = 1

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

        nmap <C-b> <Plug>LLBreakSwitch

        let g:deoplete#sources#go#align_class = 1

        au FileType go nmap <leader>rt <Plug>(go-run-tab)
        au FileType go nmap <Leader>rs <Plug>(go-run-split)
        au FileType go nmap <Leader>rv <Plug>(go-run-vertical)
"   }
"
"   Rust {
        "let g:racer_cmd = "~/.cargo/bin/racer" 
"   }
" }
