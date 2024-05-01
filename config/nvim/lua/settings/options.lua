-- Basic Options
--

local opt = vim.opt

opt.clipboard:append("unnamedplus") -- System clipboard is the default
opt.confirm = true			        -- Confirm changes before exiting buffer
opt.cursorline = true			    -- Highlight the curent line
opt.expandtab = true                -- Use spaces instead of tabs
opt.hidden = true                   -- Required to keep multiple buffers open 
opt.hlsearch = true                 -- Highlight all search matches in buffer 
opt.ignorecase = true               -- Search is case insensitive
opt.laststatus = 2                  -- Status line visibility: 2 = always on 
opt.linebreak = true                -- Wrap long lines tidily
opt.mouse = "a"                     -- Enable mouse mode
opt.number = true                   -- Display line numbers
opt.pumblend = 10                   -- Pseudo transparency for pop-up menu
opt.pumheight = 10                  -- Maximum number of entries in a pop-up
opt.relativenumber = true           -- Relative line numbers
opt.scrolloff = 8                   -- Lines of context
opt.shiftwidth = 4                  -- Indent is 4 spaces
opt.showmode = true                 -- Mode line visibility
opt.sidescrolloff = 8               -- Columns of context
opt.smartcase = true                -- Search is case sensitive if query contains capitals
opt.spell = false                   -- Spellcheck
opt.spelllang = 'en_gb'             -- Use British English when spellchecking
opt.swapfile = false                -- Prevent creation of vim .swp files 
opt.tabstop = 4                     -- Tabs are 4 spaces
opt.timeoutlen = 100                -- Milliseconds to wait for mapped sequence to complete
opt.title = true                    -- Show the file title
opt.undofile = true                 -- Enable persistent undo 
opt.undolevels = 1000
opt.wildmode = "longest:full,full"  -- Command-line completion mode
opt.wrap = true                     -- Line wrap (conflicts with 'textwidth')

