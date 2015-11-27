" Before
source ~/.nvim/before.vim

call plug#begin('~/.nvim/plugged')
source ~/.nvim/plugs.vim
call plug#end()

set rtp+=/usr/local/Cellar/fzf/HEAD

" After
source ~/.nvim/after.vim

" Host specific configs
if filereadable(glob("~/.vimrc.local")) 
    source ~/.vimrc.local
endif

