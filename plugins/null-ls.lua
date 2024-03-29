local present, null_ls = pcall(require, "null-ls")

if not present then
  return
end

local b = null_ls.builtins

local sources = {

  -- webdev stuff
  b.formatting.deno_fmt, -- choosed deno for ts/js files cuz its very fast!
  b.formatting.prettierd.with { filetypes = { "html", "css", "markdown" } }, -- so prettier works only on these filetypes
  b.diagnostics.eslint_d,

  -- Lua
  b.formatting.stylua,

  -- cpp
  b.formatting.clang_format,

  -- go
  b.formatting.goimports,

  -- php
  b.formatting.phpcsfixer,

  -- markdown
  b.diagnostics.markdownlint,
}

null_ls.setup {
  debug = true,
  sources = sources,
}
