return {
    -- Add the community repository of plugin specifications
    "AstroNvim/astrocommunity",
    -- example of imporing a plugin, comment out to use it or add your own
    -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

    -- { import = "astrocommunity.colorscheme.catppuccin" },
    {import = "astrocommunity.pack.dart"},
    {import = "astrocommunity.colorscheme.catppuccin"},
    { -- further customize the options set by the community
        "catppuccin",
        opts = {
            integrations = {
                sandwich = false,
                noice = true,
                mini = true,
                leap = true,
                markdown = true,
                neotest = true,
                cmp = true,
                overseer = true,
                lsp_trouble = true,
                rainbow_delimiters = true
            }
        }
    }, {import = "astrocommunity.completion.copilot-lua"},
    { -- further customize the options set by the community
        "zbirenbaum/copilot.lua",
        opts = {
            suggestion = {
                keymap = {
                    accept = "<C-l>",
                    accept_word = false,
                    accept_line = false,
                    next = "<C-.>",
                    prev = "<C-,>",
                    dismiss = "<C/>"
                }
            }
        }
    }, {import = "astrocommunity.bars-and-lines.smartcolumn-nvim"}, {
        "m4xshen/smartcolumn.nvim",
        opts = {colorcolumn = 120, disabled_filetypes = {"help"}}
    }, {import = "astrocommunity.completion.copilot-lua-cmp"},
    {import = "astrocommunity.pack.python-ruff"},
    -- {"", opts = {plugins = {rope = {enabled = true}}}},
    {
        'linux-cultist/venv-selector.nvim',
        opts = {search = false, search_workspace = false}
    }, {import = "astrocommunity.motion.leap-nvim"}, 
    {import = "astrocommunity.motion.harpoon"}
}
