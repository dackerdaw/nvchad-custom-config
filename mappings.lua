---@type MappingsConfig
local M = {}

M.general = {
  n = {
    -- collapse all tree in nvim-tree
    ["<C-f>"] = { "<cmd> NvimTreeCollapse <CR>", "collapse nvimtree" },
  },

  i = {
    ["jk"] = {"<ESC>", "escape insert mode", opts = { nowait = true } },
  }
}

-- more keybinds!

return M
