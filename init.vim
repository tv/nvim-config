" Before
source before.vim

call plug#begin('plugged')
source plugs.vim
call plug#end()

set rtp+=/usr/local/Cellar/fzf/HEAD

" After
source after.vim

" Host specific configs
if filereadable(glob("~/.vimrc.local")) 
    source ~/.vimrc.local
endif

