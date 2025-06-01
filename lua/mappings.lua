local M = {}

M.disabled = {
  n = {
    ["<Tab>"] = "",
    ["<S-Tab>"] = "",
  },
}

local map = vim.keymap.set

map("n", "<leader>;", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

return M

