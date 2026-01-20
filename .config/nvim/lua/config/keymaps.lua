local map = vim.keymap.set

-- Insert & Visual
map({ "v", "i" }, "kj", "<Esc>", { desc = "Escape", silent = true })

-- Normal
map({ "n" }, "<Tab>", "<cmd>BufferLineCycleNext<cr>", { desc = "Next Tab", silent = true })
map({ "n" }, "<S-Tab>", "<cmd>BufferLineCyclePrev<cr>", { desc = "Previous Tab", silent = true })
