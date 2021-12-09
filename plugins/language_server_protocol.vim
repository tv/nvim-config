Plug 'neovim/nvim-lspconfig'

func! PluginConfig_lsp()
  lua << EOF
local lspconfig = require('lspconfig')

local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
capabilities.textDocument.completion.completionItem.snippetSupport = true

lspconfig.terraformls.setup({
  capabilities = capabilities,
})
lspconfig.dockerls.setup({
  capabilities = capabilities,
})
lspconfig.pylsp.setup({
  capabilities = capabilities,
})
lspconfig.yamlls.setup({
  capabilities = capabilities,
})

EOF
endfunction
autocmd! User PlugLoaded call PluginConfig_lsp()
