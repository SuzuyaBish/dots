return {
  {
    "stevearc/conform.nvim",
    optional = true,
    ---@param opts ConformOpts
    opts = {
      formatters_by_ft = {
        typescript = { "biome-check" },
        typescriptreact = { "biome-check" },
      },
    },
  },
}
