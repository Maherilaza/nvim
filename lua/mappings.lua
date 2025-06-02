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

-- Ajout : Ctrl + Espace affiche signature LSP
map("i", "<C-Space>", function() vim.lsp.buf.signature_help() end, { desc = "LSP signature help" })

return M

