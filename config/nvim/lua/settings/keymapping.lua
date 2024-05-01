-- Keymapping
--

local function map(mode, lhs, rhs, opts)
    -- Set default values if not specified
    if opts.noremap == nil then
        opts.noremap = true
    end
    if opts.silent == nil then
        opts.silent = false
    end

    vim.keymap.set(mode, lhs, rhs, opts)
end

-- ======================================================================================
-- Leader Key
vim.g.mapleader = "\\"
vim.g.maplocalleader = "\\"

-- ======================================================================================
-- Better up & down
-- https://github.com/m4xshen/dotfiles/blob/main/nvim/nvim/lua/config/mappings.lua
map("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true })
map("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true })

-- ======================================================================================
-- Cycle through open buffers using Alt-right and Alt-left 
map("n", "<A-Right>", ":bnext<cr>", {})
map("n", "<A-Left>", ":bprevious<cr>", {})

-- ======================================================================================
-- Line Break using Ctrl-return
map("i", "<C-cr>", " <br /><cr>", {})

-- ======================================================================================
-- Telescope 
local builtin = require('telescope.builtin')
map('n', '<leader>ff', builtin.find_files, {})
map('n', '<leader>fg', builtin.live_grep, {})
map('n', '<leader>fb', builtin.buffers, {})
map('n', '<leader>fh', builtin.help_tags, {})

-- ======================================================================================
-- Tidy Tables
-- Align tables in markdown 
-- (https://jcuenod.github.io/bibletech/2023/03/14/formatting-md-tables-in-neovim/)
map("n", "<leader>mt", "vip :!pandoc -t markdown-simple_tables<cr>", { desc = "Tidy table" })

-- ======================================================================================
-- Search and replace
map("n", "<leader>r", ":%s///g<Left><Left><Left>", { desc = "Search & replace" })

-- ======================================================================================
-- Zenmode
map({"n","i"}, "<leader>z", ":ZenMode<cr>", { desc = "ZenMode" })

