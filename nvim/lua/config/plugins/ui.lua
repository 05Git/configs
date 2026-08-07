return {
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		opts = function()
			local opts = {
				options = {
					theme = "papercolor_light",
				},
			}
			return opts
		end,
	},
}
