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
  {
    "dgox16/oldworld.nvim",
    lazy = false,
    priority = 1000,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "oldworld",
      lazy = true,
      priority = 1000,
    },
  },
}
