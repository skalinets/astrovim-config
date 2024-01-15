-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)

return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(function(bufnr)
          require("astronvim.utils.buffer").close(
            bufnr)
        end)
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
    ["<leader>gs"] = { "<cmd>G<cr>", desc = "Show fugitive" },
    ["<leader>ga"] = { "<cmd>Gwrite<cr>", desc = "git add <current buffer>" },
    -- ["<C-k>"] = { "<cmd>cnext<CR>zz" },
    -- ["<C-j>"] = { "<cmd>cprev<CR>zz" },
    ["<leader>k"] = { "<cmd>lnext<CR>zz" },
    ["<leader>j"] = { "<cmd>lprev<CR>zz" },
    -- ["J"] = { ":m '>+1<CR>gv=gv" }, -- v
    -- ["K"] = { ":m '<-2<CR>gv=gv" }, -- v
    ["<C-d>"] = { "<C-d>zz" },
    ["<C-u>"] = { "<C-u>zz" },
    ["n"] = { "nzzzv" },
    ["N"] = { "Nzzzv" },
    -- v"}, "<leader>y", [["+y]]) --also v
    -- n", "<leader>Y", [["+Y]])
    -- n", "v"}, "<leader>d", [["_d]])
    -- i", "<C-c>", "<Esc>") --i
    -- n", "Q", "<nop>")
    -- n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
    -- n", "<leader>f", vim.lsp.buf.format)
    -- n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
    -- n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
  x = {
    ["<leader>p"] = { [["_dP]] }, --x
  }
}
