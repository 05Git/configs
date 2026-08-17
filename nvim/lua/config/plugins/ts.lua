return {
  {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter.config").setup({
        ensure_installed = {
          "python",
          "lua",
          "c",
          "cpp",
          "rust",
        },
        highlight = { enable = true },
        indent = { enable = true },
      })
    end,
  },
  {
    "windwp/nvim-ts-autotag",
    opts = {},
  },
}
