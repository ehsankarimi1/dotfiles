-- mapping
vim.g.mapleader=" "
vim.g.maplocalleader = "\\"

vim.keymap.set('n', '<Esc>', ':nohlsearch<CR>')
vim.keymap.set('n', '<leader>w', '<cmd>update<enter>')
vim.keymap.set('n', '<leader>q', '<cmd>q<CR>')
vim.keymap.set('n', '<leader>;', '<cmd>bd<CR>') -- unload current buffer and delete it from buffer list 

vim.cmd [[ set clipboard+=unnamedplus ]] -- ocs53.lua is the module for clipboard

-- options
vim.o.hlsearch = true
vim.o.swapfile = false
vim.o.mouse = '' -- Disable mouse mode 
vim.wo.number = true
vim.o.relativenumber = true
vim.o.expandtab = true
vim.o.shiftwidth = 4
vim.o.cursorline = true
vim.o.list = true
vim.opt.listchars = {
    space = "·",      -- Dots for spaces
}
vim.o.updatetime = 250

-- case insensitive searching UNLESS /c or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.syntax = "off"



-- vim.cmd('set verbose=3') -- show logs in startup

-- function for disable builtin_plugins
-- local builtin_plugs = {
--     -- put every plugins you want to disable here
--     "gzip",
--     "tar",
--     "zip",
--     "netrw",
--     "tohtml",
--     "tutor",
--     "spellfile_plugins",
--     "getscript",
--     "getscriptPlugin",
--     "rrhelper",
--     "editorconfig",
-- }
-- for i = 1, #builtin_plugs do
--     _G['loaded_' .. builtin_plugs[i]] = true
-- end
