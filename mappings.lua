---@type MappingsConfig
local M = {}

M.general = {
  n = {
  },

  i = {
    ["jk"] = {"<ESC>", "escape insert mode", opts = { nowait = true } },
  }
}

-- more keybinds!

return M
