return {
    -- oil (file manager)
    {
        "stevearc/oil.nvim",
        dependencies = {'nvim-tree/nvim-web-devicons'},
        lazy = false,
        opts = {},
        keys = {
            {  "-", function()
                require("oil").toggle_float()
            end, { noremap = true }
            },
        },
    },
    -- Telescope
    {
        'nvim-telescope/telescope.nvim', tag = '0.1.8',
        dependencies = { 'nvim-lua/plenary.nvim' },
        cmd = "Telescope",
        opts = {},
        keys = {
            { "<leader>ff", "<cmd>Telescope find_files<CR>", { desc = 'Telescope find files' }, { noremap = true }},
            { "<leader>fg", "<cmd>Telescope live_grep<CR>", { desc = 'Telescope live grep' }, { noremap = true }},
            { "<leader>fb", "<cmd>Telescope buffers<CR>", { desc = 'Telescope buffers' }, { noremap = true }},
            { "<leader>fh", "<cmd>Telescope help_tags<CR>", { desc = 'Telescope help tags' }, { noremap = true }},
        },
    },
    -- Trouble
    {
        "folke/trouble.nvim",
        cmd = "Trouble",
        opts = {},
        keys = {
            { "<leader>tr", "<cmd>Trouble diagnostics toggle<CR>" },
            { "<leader>xX", "<cmd>Trouble diagnostics toggle filter.buf=0<CR>" },
            { "<leader>cs", "<cmd>Trouble symbols toggle focus=false<CR>" },
            { "<leader>cl", "<cmd>Trouble lsp toggle focus=false win.position=right<CR>" },
            { "<leader>xL", "<cmd><Trouble loclist toggle<CR>" },
            { "<leader>xQ", "<cmd>Trouble qflist toggle<CR>" },
        },
    },
    -- {
    --     "nvim-neo-tree/neo-tree.nvim",
    --     branch = "v3.x",
    --     dependencies = {"MunifTanjim/nui.nvim",},
    --     opts = {},
    -- },
}
