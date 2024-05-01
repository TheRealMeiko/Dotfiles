-- Auto Commands
-- 

-- ===============================================================================
-- Turn on spell check when opening text files
-- https://github.com/m4xshen/dotfiles/blob/main/nvim/nvim/lua/config/autocmds.lua
vim.api.nvim_create_autocmd("BufEnter", {
   pattern = { "*.markdown", "*.md", "*.txt" },
   callback = function()
        vim.opt_local.spell = true
   end,
})

