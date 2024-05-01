-- Package Management
--
-- Settings for
--  1. The package manager and,
--  2. The installed packages

-- ================================================================================
-- Package Manager (in this case, lazy.nvim)
--
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- ================================================================================
-- Packages and their settings 
--
require("lazy").setup({

--  {   'catppuccin/nvim', name = 'catppuccin', priority = 1000 },
--  {   'EdenEast/nightfox.nvim', name = 'nightfox', priority = 1000    },
--  {   'projekt0n/github-nvim-theme', name = 'github', priority = 1000 },
    {   'sainnhe/edge', name = 'edge', priority = 1000  },

    {   'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'    },
    {   'neovim/nvim-lspconfig' },
    {   'williamboman/mason.nvim'   },
    {   'williamboman/mason-lspconfig.nvim' },

    {
        'hrsh7th/nvim-cmp',
        -- completion engine
        event = "InsertEnter",
    },

    {   'hrsh7th/cmp-nvim-lsp'  },
    {   'hrsh7th/cmp-buffer'    },
    {   'hrsh7th/cmp-path'  },
    {   'saadparwaiz1/cmp_luasnip'  },
    {   'L3MON4D3/LuaSnip'  },

    {
        'windwp/nvim-autopairs',
		event = "InsertEnter",
		config = true,
		opts = {},
	},

    {   'nvim-telescope/telescope.nvim', branch = '0.1.x'  },
    {   'nvim-lua/plenary.nvim' },
    {   'BurntSushi/ripgrep'    },

    {
        -- for telescope-fzf-native, ensure cmake, make & gcc are installed on computer
        'nvim-telescope/telescope-fzf-native.nvim', build = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build'
    },

    {{
        'nvim-treesitter/nvim-treesitter',
        build = ":TSUpdate",
        config = function ()
            local configs = require("nvim-treesitter.configs")

            configs.setup({
                ensure_installed = {
                    "lua",
                    "bash",
                    "css",
                    "html",
                    "markdown",
                    "markdown_inline",
                    "yaml"
                },
                sync_install = false,
                auto_install = true,
                highlight = { enable = true },
                indent = { enable = true },
            })
        end
    }},

	{
        'folke/which-key.nvim',
		event = 'VeryLazy',
		init = function()
			vim.o.timeout = true
			vim.o.timeoutlen = 300
		end,
        opts = {}
    },

    {
        'folke/zen-mode.nvim',
		opts = {
			window = {
				width = 80,
			},
		},
	},

})
