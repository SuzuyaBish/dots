return {
  -- {
  --   "webhooked/kanso.nvim",
  --   lazy = false,
  --   priority = 1000,
  --   config = function()
  --     require("kanso").setup({
  --       background = {
  --         dark = "zen",
  --         light = "pearl",
  --       },
  --     })
  --   end,
  -- },
  { "EdenEast/nightfox.nvim" },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "terafox",
      lazy = true,
      priority = 1000,
    },
  },
}
