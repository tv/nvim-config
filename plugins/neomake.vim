let g:neomake_terraform_tflint_maker = {
        \ 'exe' : 'tflint',
        \ 'append_file': 0,
        \ 'cwd': '%:p:h',
        \ 'args': [],
        \ 'errorformat': '%+P%f,%p%t%*[^:]:%l %m,%-Q'
        \ }

let g:neomake_terraform_enabled_makers = ['tflint']

autocmd BufNewFile,BufRead *.rego setfiletype rego
let g:neomake_rego_opa_maker = {
      \ 'exe': 'opa',
      \ 'args': ['fmt'],
      \ 'stdin': 1,
      \ }

let g:neomake_rego_enabled_makers = ['opa']
