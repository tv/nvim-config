Plug 'neovim/nvim-lspconfig'

"  brew install hashicorp/tap/terraform-ls
autocmd User PlugLoaded lua require('lspconfig').terraform_lsp.setup{}
autocmd User PlugLoaded lua require('lspconfig').dockerls.setup{}
"require("lspconfig.health").check()
