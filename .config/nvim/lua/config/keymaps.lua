local map = vim.keymap.set

if vim.g.vscode then
  local vscode = require("vscode")

  map({ "n" }, "<leader>bo", function()
    vscode.action("workbench.action.closeOtherEditors")
  end)

  map({ "n" }, "<leader>ff", function()
    vscode.action("workbench.action.quickOpen")
  end)

  map({ "n" }, "<leader>ca", function()
    vscode.action("editor.action.quickFix")
  end)

  map({ "n" }, "<leader>cr", function()
    vscode.action("editor.action.rename")
  end)

  map({ "n" }, "<leader>bd", function()
    vscode.action("workbench.action.closeActiveEditor")
  end)
else
  map({ "v", "i" }, "kj", "<Esc>", { desc = "Escape", silent = true })

  map({ "n" }, "<Tab>", "<cmd>BufferLineCycleNext<cr>", { desc = "Next Tab", silent = true })
  map({ "n" }, "<S-Tab>", "<cmd>BufferLineCyclePrev<cr>", { desc = "Previous Tab", silent = true })

  map("n", "<C-h>", "<Cmd>NvimTmuxNavigateLeft<CR>", {})
  map("n", "<C-j>", "<Cmd>NvimTmuxNavigateDown<CR>", {})
  map("n", "<C-k>", "<Cmd>NvimTmuxNavigateUp<CR>", {})
  map("n", "<C-l>", "<Cmd>NvimTmuxNavigateRight<CR>", {})
end
