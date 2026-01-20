vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = { "*.js", "*.ts", "*.jsx", "*.tsx", "*.json" },
  callback = function()
    vim.lsp.buf.code_action({ context = { only = { "source.fixAll.biome" } }, apply = true })
    vim.lsp.buf.code_action({ context = { only = { "source.organizeImports.biome" } }, apply = true })
  end,
})
