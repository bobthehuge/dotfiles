---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<leader>e"] = { ":NvimTreeToggle<CR>" }
  },
}

-- more keybinds!

return M
