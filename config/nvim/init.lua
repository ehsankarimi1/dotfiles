local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    vim.print("Installing Lazy & plugins...")
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "--branch=stable",
        "https://github.com/folke/lazy.nvim.git",
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

require("settings")
require("lazy").setup({
    spec = {
        {import = "plugins"},
    },
    performance = {
        rtp = {
            disabled_plugins = {
                "gzip", -- Provides support for gzip-compressed files.
                "tarPlugin", -- Allows for handling tar files.
                "zipPlugin", -- Enables reading and writing zip files.
                "netrwPlugin", -- Provides file browsing capabilities directly within Neovim.
                "matchit", -- Enhances the % command to match more than just parentheses and brackets.
                "matchparen", -- Highlights matching parentheses when the cursor is over one.
                "man",
                "tutor", -- Offers a built-in tutorial for learning Vim/Neovim basics.
                "spellfile",
                "tohtml", -- Converts a buffer to HTML format.
            }
        }
    },
    checker = { enabled = false },
})
