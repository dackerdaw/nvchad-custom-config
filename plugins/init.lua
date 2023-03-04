local overrides = require "custom.plugins.overrides"

---@type {[PluginName]: NvPluginConfig|false}
local plugins = {

  ["goolord/alpha-nvim"] = { disable = false }, -- enables dashboard

  -- Override plugin definition options
  ["neovim/nvim-lspconfig"] = {
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.plugins.lspconfig"
    end,
  },

  -- overrde plugin configs
  ["nvim-treesitter/nvim-treesitter"] = {
    override_options = overrides.treesitter,
  },

  ["williamboman/mason.nvim"] = {
    override_options = overrides.mason,
  },

  ["nvim-tree/nvim-tree.lua"] = {
    override_options = overrides.nvimtree,
  },

  -- Install a plugin
  ["max397574/better-escape.nvim"] = {
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },

  -- code formatting, linting etc
  ["jose-elias-alvarez/null-ls.nvim"] = {
    after = "nvim-lspconfig",
    config = function()
      require "custom.plugins.null-ls"
    end,
  },

  -- remove plugin
  -- ["hrsh7th/cmp-path"] = false,

  ["ggandor/leap.nvim"] = {
    opt = true,
    setup = function()
      require("core.lazy_load").on_file_open "leap.nvim"
    end,
    config = function ()
      require("leap").add_default_mappings(true)
    end
  },

  ["iamcco/markdown-preview.nvim"] = {
    run = "cd app && yarn install",
    ft = { "markdown" },
    config = function ()
    end
  },


  ["kdheepak/lazygit.nvim"] = {
    cmd = { "LazyGit" },
  }

}

return plugins
