local function set_linenr_hl()
    -- TODO: Check docs if there is a better way
    vim.api.nvim_set_hl(0, "LineNr", { fg = "#ffffff" })
    vim.api.nvim_set_hl(0, "LineNrAbove", { fg = "#ffffff" })
    vim.api.nvim_set_hl(0, "LineNrBelow", { fg = "#ffffff" })
    vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "#ffffff", bold = true })
end
 
local function set_dap_hl()
    vim.api.nvim_set_hl(0, "DapBreakpointColor", { fg = "#e51400" })
    vim.api.nvim_set_hl(0, "DapBreakpointConditionColor", { fg = "#f9ff87" })
    vim.api.nvim_set_hl(0, "DapLogPointColor", { fg = "#61afef" })
    vim.api.nvim_set_hl(0, "DapStoppedColor", { fg = "#98c379" })
    vim.api.nvim_set_hl(0, "DapStoppedLine", { bg = "#a8a8a8" })
    vim.api.nvim_set_hl(0, "DapBreakpointRejectedColor", { fg = "#5c6370" })
end

local function set_all_hl()
    set_linenr_hl()
    set_dap_hl()
end
set_all_hl()
 
-- Colorschemes reset highlight groups when applied, so reapply after
-- switching (e.g. `:colorscheme foo` or a colorscheme plugin loading).
vim.api.nvim_create_autocmd("ColorScheme", {
    desc = "Keep line numbers white after a colorscheme change",
    pattern = "*",
    callback = set_all_hl,
})

