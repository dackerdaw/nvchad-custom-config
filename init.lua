local autocmd = vim.api.nvim_create_autocmd
local opt = vim.opt

-- Auto resize panes when resizing nvim window
autocmd("VimResized", {
  pattern = "*",
  command = "tabdo wincmd =",
})

-- local function open_nvim_tree()
--   require("nvim-tree.api").tree.open()
-- end
-- autocmd({ "VimEnter" }, { callback = open_nvim_tree })

opt.relativenumber = true
