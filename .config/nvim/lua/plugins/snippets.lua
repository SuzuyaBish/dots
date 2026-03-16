return {
  {
    "rafamadriz/friendly-snippets",
    config = function()
      require("luasnip.loaders.from_vscode").lazy_load()
      require("luasnip.loaders.from_vscode").lazy_load({ paths = { "~/.config/nvim/lua/my-snippets/" } })
    end,
  },
  {
    "L3MON4D3/LuaSnip",
    -- stylua: ignore
    keys = {
      {"<tab>", mode = { "i", "s" },false},
      {
        "<down>",
        function()
          return require("luasnip").jumpable(1) and "<Plug>luasnip-jump-next" or "<down>"
        end,
        expr = true, silent = true, mode = "i",
      },
      { "<down>", function() require("luasnip").jump(1) end, mode = "s" },
      { "<up>", function() require("luasnip").jump(-1) end, mode = { "i", "s" } },
    },
  },
}
