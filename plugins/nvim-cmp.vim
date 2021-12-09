Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'onsails/lspkind-nvim'

func! PluginConfig_cmp()
lua << EOF
local cmp = require('cmp')
local lspkind = require('lspkind')
cmp.setup({
  mapping = {
   ['<C-n>'] = function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      else
        fallback()
      end
    end,
    ['<S-Tab>'] = function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      else
        fallback()
      end
    end,
  -- ['<Esc>'] = cmp.mapping.close(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
    ['<C-d>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
  },
  sources = {
    { name = 'nvim_lsp' }, -- For nvim-lsp
    { name = 'path' }, -- for path completion
    { name = 'buffer', keyword_length = 4 }, -- for buffer word completion
    { name = 'emoji', insert = true, }, -- emoji completion
  },
  completion = {
    keyword_length = 1,
    completeopt = "menu,noselect"
  },
  experimental = {
    ghost_text = true
  },
  formatting = {
    format = lspkind.cmp_format({
      with_text = true,
      menu = {
        nvim_lsp = "[LSP]",
        path = "[Path]",
        buffer = "[Buffer]",
        emoji = "[Emoji]",
      },
    }),
  },
})
EOF
endfunction

augroup CmpVimSetup
  autocmd!
  autocmd User PlugLoaded call PluginConfig_cmp()
augroup END
