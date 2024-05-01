-- Colour Scheme
--
local opt = vim.opt
opt.termguicolors = true

-- catppuccin
-- choose from catppuccin, catppuccin-latte, -frappe, -macchiato, -mocha
--vim.cmd.colorscheme('catppuccin-frappe')

-- nightfox
-- choose from nightfox, dayfox, dawnfox, duskfox, nordfox, terafox, carbonfox
-- require('nightfox').setup{}
-- vim.cmd.colorscheme('dawnfox')

-- github theme
-- for a full list of available colorschemes visit
-- https://github.com/projekt0n/github-nvim-theme
-- github_light, github_light_default, github_dark, gihub_dark_default, github_dark_dimmed 
--vim.cmd.colorscheme('github_dark_dimmed')

-- edge
--https://github.com/sainnhe/edge
-- choose from light or dark
vim.opt.background = 'light'
vim.cmd.colorscheme('edge')
