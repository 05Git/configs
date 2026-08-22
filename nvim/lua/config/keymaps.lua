-- explore buffer dir
vim.keymap.set("n", "<Leader>eb", function()
	require("mini.files").open(vim.api.nvim_buf_get_name(0), true)
end, { desc = "Open current buffer dir w/mini.files" })
-- explore pwd
vim.keymap.set("n", "<Leader>ep", function()
	require("mini.files").open(vim.fn.getcwd(), true)
end, { desc = "Open current pwd w/mini.files" })

-- lsp
vim.keymap.set("n", "grd", vim.lsp.buf.definition, { desc = "LSP Definition" })
vim.keymap.set("n", "grs", vim.lsp.buf.signature_help, { desc = "LSP Signature Help" })
vim.keymap.set("n", "grT", vim.lsp.buf.typehierarchy, { desc = "LSP Type-Hierarchy" })
vim.keymap.set("n", "grS", vim.lsp.buf.workspace_symbol, { desc = "LSP Workspace Symbols" })
vim.keymap.set("n", "grD", vim.lsp.buf.workspace_diagnostics, { desc = "LSP Workspace Diagnostics" })
