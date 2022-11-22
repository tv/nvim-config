Plug 'neovim/nvim-lspconfig'

func! PluginConfig_lsp()
lua << EOF
local capabilities = require('cmp_nvim_lsp').default_capabilities()

require('lspconfig')['terraformls'].setup {
  capabilities = capabilities,
}

require('lspconfig')['dockerls'].setup {
  capabilities = capabilities,
}

require('lspconfig')['pylsp'].setup {
  capabilities = capabilities,
}

require('lspconfig')['yamlls'].setup {
  capabilities = capabilities,
}

require('lspconfig')['gopls'].setup {
  capabilities = capabilities,
}

require('lspconfig')['rust_analyzer'].setup {
  capabilities = capabilities,
}

EOF
endfunction

augroup LspConfigSetup
    autocmd!
    autocmd User PlugLoaded call PluginConfig_lsp()
augroup END
