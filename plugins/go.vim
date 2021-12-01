Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' } ", { 'for': 'go' }


let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_interfaces = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

nmap <C-b> <Plug>LLBreakSwitch

au FileType go nmap <leader>rt <Plug>(go-run-tab)
au FileType go nmap <Leader>rs <Plug>(go-run-split)
au FileType go nmap <Leader>rv <Plug>(go-run-vertical)
au FileType go nmap <leader>g :GoDef<cr>

" Debugger bindings
au FileType go nmap <F1> :GoDebugBreakpoint<cr>
au FileType go nmap <F3> :GoDebugStart<cr>
au FileType go nmap <F4> :GoDebugTest<cr>
au Filetype go nmap <F2> :GoDebugStop<cr>
