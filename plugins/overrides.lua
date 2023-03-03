local M = {}

M.treesitter = {
  ensure_installed = {
    "vim",
    "lua",
    "html",
    "css",
    "javascript",
    "c",
    "python",
    "go",
    "php",
    "markdown",
    "yaml",
  },
}

M.mason = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",
    "stylua",

    -- web dev stuff
    "css-lsp",
    "html-lsp",
    "deno",
    "emmet-ls",
    "tailwindcss-language-server",

    -- golang
    "gopls",
    "goimports",

    -- yaml
    "yaml-language-server",

    -- python
    "python-lsp-server",

    -- php
    "intelephense",
    "php-cs-fixer",

    -- markdown
    "marksman",
    "markdownlint",
    "prettierd",
  },
}

-- git support in nvimtree
M.nvimtree = {
  git = {
    enable = true,
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },

  view = {
    relativenumber = true,
  }
}

return M
