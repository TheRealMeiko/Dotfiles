-- ================================================================
-- Services
--

-- ================================================================
-- Language Servers
--
local lsp_zero = require('lsp-zero')

require('mason').setup({})
require('mason-lspconfig').setup({
  handlers = {
    lsp_zero.default_setup,
    lua_ls = function()
      local lua_opts = lsp_zero.nvim_lua_ls()
      require('lspconfig').lua_ls.setup(lua_opts)
    end,
  }
})

-- Install chosen languages via the :Mason command 
-- Languages and their settings available at 
-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md

-- Marksman
require'lspconfig'.marksman.setup{}

-- Markdown-Oxide 
-- "Attempting to be the best PKM system for software enthusiasts"
require'lspconfig'.markdown_oxide.setup{}

-- ================================================================
-- Completion Engine
--
local cmp = require'cmp'

cmp.setup({
    snippet = {
        expand = function(args)
        require('luasnip').lsp_expand(args.body)
        end,
    },

    mapping = cmp.mapping.preset.insert({
        ['<C-b>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.abort(),
        ['<CR>'] = cmp.mapping.confirm({ select = true }),
    }),

    sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        { name = 'luasnip' },
        { name = 'buffer' },
        { name = 'path'},
    }),
})

-- Load snippets from ~/.config/nvim/snippets/
require("luasnip.loaders.from_lua").load({paths = "~/.config/nvim/snippets/"})

