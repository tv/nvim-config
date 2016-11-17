" Before
runtime before.vim

call plug#begin('~/.config/nvim/plugged')
runtime plugs.vim
call plug#end()

set rtp+=/usr/local/Cellar/fzf/HEAD

" After
runtime after.vim

" Host specific configs
if filereadable(glob("~/.vimrc.local")) 
  source ~/.vimrc.local
endif

