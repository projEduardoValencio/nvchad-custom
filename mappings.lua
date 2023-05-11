require("custom.custom-nvim-tree")
---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<F3>"] = { ":lua vim.lsp.buf.format()<CR>", opts = { nowait = true } },
    ["§"] = {":vertical resize +5<CR>", opts = { nowait = true }},
    ["<C-A>-"] = {":vertical resize -5<CR>", opts = { nowait = true }},
    ["<A-,>"] = {"<S-BS>"},
    ["<A-.>"] = {"<BS>"}
--    ["V"]= {api.node.open.vertical , opts = {"Split"}}
  },
}

vim.g.nvim_tree_binding = {
  ["<CR>"] = "open_vertical_split"
}

-- more keybinds!

return M
