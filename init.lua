local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
autocmd("VimResized", {
  pattern = "*",
  command = "tabdo wincmd =",
})

local tree_cb = require'nvim-tree.config'.nvim_tree_callback

 require("nvim-tree").setup {
      view = {
        side = "left",
        mappings = {
          custom_only = false,
          list = {
            { key = "l",  cb = tree_cb("edit") },
            { key = "v",  cb = tree_cb("vsplit") },
          },
        },
      },
    }
