return {
    -- [Un]Comment Code
    {
        "numToStr/Comment.nvim",
        opts = {
            ---Add a space b/w comment and the line
            padding = true,
            ---Whether the cursor should stay at its position
            sticky = true,
            ---Lines to be ignored while (un)comment
            ignore = nil,
            ---LHS of toggle mappings in NORMAL mode
            toggler = {
                ---Line-comment toggle keymap
                line = 'gcc',
            },
            ---LHS of operator-pending mappings in NORMAL and VISUAL mode
            opleader = {
                ---Line-comment keymap
                line = 'gc',
            },
            ---LHS of extra mappings
            extra = {
                ---Add comment on the line above
                above = 'gca',
                ---Add comment on the line below
                below = 'gcb',
                ---Add comment at the end of line
                eol = 'gce',
            },
            ---Enable keybindings
            ---NOTE: If given `false` then the plugin won't create any mappings
            mappings = {
                -- Operator-pending mapping; `gcc` `gc[count]{motion}` 
                basic = true,
                -- Extra mapping; `gca`, `gcb`, `gce`
                extra = true,
            },
            ---Function to call before (un)comment
            pre_hook = nil,
            ---Function to call after (un)comment
            post_hook = nil,
        },
        config = function(_,opts)
            local comment = require("Comment")
            comment.setup(opts)
        end
    },
    -- Version controlling
    {
        "lewis6991/gitsigns.nvim",
        opts = {}
    },
    -- (TODO,FIX,WARN,NOTE) comments UI
    {
        "folke/todo-comments.nvim",
        opts = {
            signs = false,
            keywords = {
                TODO = { color = "info" }
            },
            colors = {
                info = "#FBBF24"
            },
        },
        keys = {
            {"<leader>tt", "<cmd>:TodoTelescope keywords=TODO,FIX,WARN<CR>"},
            -- { "]t", function()
            --     require("todo-comments").jump_next()
            -- end)
            -- },
            -- {"[t", function()
            --     require("todo-comments").jump_prev()
            -- end)
            -- },

        },
        -- config = function(_,opts)
        --     local todo = require("todo-comments")
        --     todo.setup(opts)
        --     -- keymaps 
        --     vim.keymap.set("n", "<leader>tt", "<cmd>:TodoTelescope keywords=TODO,FIX,WARN<CR>")
        --     vim.keymap.set("n", "]t", function()
        --         require("todo-comments").jump_next()
        --     end)
        --     vim.keymap.set("n", "[t", function()
        --         require("todo-comments").jump_prev()
        --     end)
        -- end
    },

}
