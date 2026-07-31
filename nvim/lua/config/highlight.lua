local function set_linenr_hl()
    -- TODO: Check docs if there is a better way
    vim.api.nvim_set_hl(0, "LineNr", { fg = "#ffffff" })
    vim.api.nvim_set_hl(0, "LineNrAbove", { fg = "#ffffff" })
    vim.api.nvim_set_hl(0, "LineNrBelow", { fg = "#ffffff" })
    vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "#ffffff", bold = true })
end
 
set_linenr_hl()
 
-- Colorschemes reset highlight groups when applied, so reapply after
-- switching (e.g. `:colorscheme foo` or a colorscheme plugin loading).
vim.api.nvim_create_autocmd("ColorScheme", {
    desc = "Keep line numbers white after a colorscheme change",
    pattern = "*",
    callback = set_linenr_hl,
})

