-- explore buffer dir
vim.keymap.set("n", "<Leader>eb", function()
	require("mini.files").open(vim.api.nvim_buf_get_name(0), true)
end, { desc = "Open current buffer dir w/mini.files" })
-- explore pwd
vim.keymap.set("n", "<Leader>ep", function()
	require("mini.files").open(vim.fn.getcwd(), true)
end, { desc = "Open current pwd w/mini.files" })
