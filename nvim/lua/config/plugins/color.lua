return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        flavour = "frappe", -- latte = light, frappe/macchiato/mocha = dark
        no_italic = true, -- annnoying to look at
        integrations = {
          nvimtree = true,
        },
      })
      vim.cmd.colorscheme("catppuccin-mocha")
    end,
  },
}
