Plug 'neovim/nvim-lspconfig'

func! Plugins_language_server_protocol()
  lua << EOF
local lspconfig = require('lspconfig')

lspconfig.terraformls.setup{}
lspconfig.dockerls.setup{}
lspconfig.pylsp.setup{}
lspconfig.yamlls.setup{}

EOF
endfunction

autocmd! User PlugLoaded call Plugins_language_server_protocol()
