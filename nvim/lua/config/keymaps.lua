local map = vim.keymap.set

-- explore buffer dir
map("n", "<Leader>eb", function()
  require("mini.files").open(vim.api.nvim_buf_get_name(0), true)
end, { desc = "Open current buffer dir w/mini.files" })
-- explore pwd
map("n", "<Leader>ep", function()
  require("mini.files").open(vim.fn.getcwd(), true)
end, { desc = "Open current pwd w/mini.files" })

map("n", "<Leader>bd", ":bd<CR>", { desc = "Delete buffer", silent = true })
map("n", "<Leader>tn", ":tabnew<CR>", { desc = "Open new tab", silent = true })
map("n", "<Leader>tc", ":tabclose<CR>", { desc = "Close tab", silent = true })
map("n", "<Leader>to", ":tabonly<CR>", { desc = "Close other tabs", silent = true })
map("n", "<Leader>t,", ":tabmove -<CR>", { desc = "Move tab left", silent = true })
map("n", "<Leader>t.", ":tabmove +<CR>", { desc = "Move tab right", silent = true })

-- lsp
map("n", "grd", vim.lsp.buf.definition, { desc = "LSP Definition" })
map("n", "grs", vim.lsp.buf.signature_help, { desc = "LSP Signature Help" })
map("n", "grT", vim.lsp.buf.typehierarchy, { desc = "LSP Type-Hierarchy" })
map("n", "grS", vim.lsp.buf.workspace_symbol, { desc = "LSP Workspace Symbols" })
map("n", "grD", vim.lsp.buf.workspace_diagnostics, { desc = "LSP Workspace Diagnostics" })

-- Move selected lines up/down in visual mode
map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "K", ":m '<-2<CR>gv=gv")

-- Toggles
map("n", "<Leader>TD", function()
  vim.diagnostic.enable(not vim.diagnostic.is_enabled())
end, { desc = "Toggle diagnostics" })
