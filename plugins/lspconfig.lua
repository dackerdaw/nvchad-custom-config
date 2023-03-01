local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

local servers = {
  "html",
  "cssls",
  "denols",
  "clangd",
  "pylsp",
  "emmet_ls",
  "tailwindcss",
  "gopls",
  "intelephense",
  "yamlls",
  "marksman"
}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

vim.diagnostic.config { virtual_text = false }
