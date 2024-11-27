return {
    -- Theme
    {
        "oxfist/night-owl.nvim",
        lazy = false, -- make sure we load this during startup if it is your main colorscheme
        priority = 1000, -- make sure to load this before all the other start plugins
        opts = {
            bold = true,
            italics = true,
            underline = true,
            undercurl = true,
            transparent_background = false,
        },
        config = function()
            vim.cmd.colorscheme("night-owl")
            vim.api.nvim_set_hl(0, "cursorline", { bg = "#233545"})
        end,
    },
    -- Theme (Gruvbox)
    -- {
    --     "ellisonleao/gruvbox.nvim",
    --     lazy = false, -- make sure we load this during startup if it is your main colorscheme
    --     priority = 1000, -- make sure to load this before all the other start plugins
    --     opts = {},
    --     config = function()
    --         vim.cmd.colorscheme("gruvbox")
    --     end,
    -- },
    -- Treesitter (Code Syntax)
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        event = { "BufReadPost", "BufNewFile" },
        opts = {
            ensure_installed = {"bash", "lua", "vim", "vimdoc" },
            auto_install = false,
            ignore_install = { "javascript", "elixir"},
            sync_install = false,
            highlight = { enable = true },
            textopbjects = { enable = true },
            indent = { enable = true },
            incremental_selection = {
                enable = true,
                keymaps = {
                    -- init_selection = "<CR>",
                    init_selection = "gri",
                    node_incremental = "grn", -- init_selection first after that scope
                    node_decremental = "grm", -- init_selection first after that scope
                    scope_incremental = "grc", -- init_selection first after that scope
                },
            },
        },
        config = function(_,opts)
           require("nvim-treesitter.configs").setup(opts)
        end
    },
    -- Indent code
    {
        "lukas-reineke/indent-blankline.nvim",
        main = "ibl",
        opts = {
        },
    },
}
