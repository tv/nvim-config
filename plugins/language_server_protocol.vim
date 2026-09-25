Plug 'neovim/nvim-lspconfig'

func! PluginConfig_lsp()
  lua << EOF

vim.lsp.enable('terraformls')
vim.lsp.enable('dockerls')
vim.lsp.enable('pylsp')

vim.lsp.config('yamlls', {
  customTags = {
    "!input",
  }
})
vim.lsp.enable('yamlls')

vim.lsp.enable('dockerls')
vim.lsp.enable('gopls')
vim.lsp.enable('rust_analyzer')

EOF
endfunction

augroup LspConfigSetup
    autocmd!
    autocmd User PlugLoaded call PluginConfig_lsp()
augroup END
