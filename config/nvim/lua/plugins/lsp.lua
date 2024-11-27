return {
    {
        "williamboman/mason.nvim",
        opts = {
            ui = {
                border = "rounded",
                width = 0.75,
                icons = {
                    package_installed = "✓",
                    package_pending = "➜",
                    package_uninstalled = "✗"
                },
            },
            max_concurrent_installers = 2,

        },
    },
    {
        "WhoIsSethDaniel/mason-tool-installer.nvim",
        opts = {
            ensure_installed = { "stylua", "prettier" },
            auto_update = false,
        },
    },
    -- TODO: working of nvim-lspconfig and make it better
    {
        "neovim/nvim-lspconfig",
        dependencies = {
            {
                "williamboman/mason-lspconfig.nvim",
                opts = {
                    ensure_installed = { "lua_ls" },
                    automatic_installation = false,
                },
            }
        },
        config = function(_, opts)
            --local capabilities = require('cmp_nvim_lsp').default_capabilities()
            --             local capabilities = vim.tbl_deep_extend("force",
            --             vim.lsp.protocol.make_client_capabilities(),
            --             require('cmp_nvim_lsp').default_capabilities()
            --             )

            local handlers = {
                function(server_name)
                    require("lspconfig")[server_name].setup {}
                    -- capabilities = capabilities
                end,
                -- Manual configuration of each LSPs
                -- https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md
                ["lua_ls"] = function()
                    local lspconfig = require("lspconfig")
                    lspconfig.lua_ls.setup {
                        settings = {
                            Lua = {
                                diagnostics = {
                                    globals = { "vim" }
                                }
                            }
                        }
                    }
                end,
            }
            local mason_lspconfig = require("mason-lspconfig")
            mason_lspconfig.setup(opts)
            mason_lspconfig.setup_handlers(handlers)

            -- keymaps
--            vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
--            vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
--            vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
--            vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
--            vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
--            vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, {})

        end

    },
}
