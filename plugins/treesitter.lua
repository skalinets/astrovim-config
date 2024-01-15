return {
    "nvim-treesitter/nvim-treesitter",

    commit = "f2778bd1a28b74adf5b1aa51aa57da85adfa3d16",

    opts = function(_, opts)
        -- add more things to the ensure_installed table protecting against community packs modifying it
        opts.ensure_installed = require("astronvim.utils").list_insert_unique(
                                    opts.ensure_installed, {
                "python", "dart", "yaml", "json", "markdown", "html", "css",
                "javascript", "typescript", "tsx", "lua"
                -- "lua"
            })
        opts.highlight = {enable = true, disable = {}}
        opts.indent = {enable = false, disable = {"dart"}}

        opts.textobjects = {
            select = {
                enable = true,
                lookahead = true, -- Automatically jump forward to textobj, similar to targets.vim
                keymaps = {
                    -- You can use the capture groups defined in textobjects.scm
                    ['aa'] = '@parameter.outer',
                    ['ia'] = '@parameter.inner',
                    ['af'] = '@function.outer',
                    ['if'] = '@function.inner',
                    ['ac'] = '@class.outer',
                    ['ic'] = '@class.inner',
                    ['ii'] = '@conditional.inner',
                    ['ai'] = '@conditional.outer',
                    ['il'] = '@loop.inner',
                    ['al'] = '@loop.outer',
                    ['at'] = '@comment.outer'
                }
            },
            move = {
                enable = true,
                set_jumps = true, -- whether to set jumps in the jumplist
                goto_next_start = {
                    [']m'] = '@function.outer',
                    [']]'] = '@class.outer'
                },
                goto_next_end = {
                    [']M'] = '@function.outer',
                    [']['] = '@class.outer'
                },
                goto_previous_start = {
                    ['[m'] = '@function.outer',
                    ['[['] = '@class.outer'
                },
                goto_previous_end = {
                    ['[M'] = '@function.outer',
                    ['[]'] = '@class.outer'
                }
                -- goto_next = {
                --   [']i'] = "@conditional.inner",
                -- },
                -- goto_previous = {
                --   ['[i'] = "@conditional.inner",
                -- }
            },
            swap = {
                enable = true,
                swap_next = {['<leader>a'] = '@parameter.inner'},
                swap_previous = {['<leader>A'] = '@parameter.inner'}
            },
            incremental_selection = {
                 nable = true,
                keymaps = {
                    init_selection = "<cr>",
                    node_incremental = "grn",
                    scope_incremental = "grc",
                    node_decremental = "grm"
                }
            }
        }
    end
}
