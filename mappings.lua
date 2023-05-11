---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<F3>"] = { ":lua vim.lsp.buf.format()<CR>", opts = { nowait = true } },
  },
}

-- more keybinds!

return M
