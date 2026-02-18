-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Disable auto-detection of project root (git, etc.) - stay in the directory nvim was started in
vim.g.root_spec = { "cwd" }

-- Disable netrw (Vim's built-in file explorer) to prevent double file trees
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.g.lazyvim_php_lsp = "intelephense"
vim.opt.relativenumber = false
vim.opt.winbar = "%=%m %f"
vim.opt.expandtab = true -- converts tabs to spaces
vim.opt.shiftwidth = 4 -- spaces for indentation level
vim.opt.tabstop = 4 -- spaces that tabs cound for
vim.opt.softtabstop = 4 -- how many spaces a tab feels like when editing

-- PHP editing
vim.api.nvim_create_autocmd("FileType", {
  pattern = "php",
  callback = function()
    vim.opt_local.expandtab = true -- Use spaces instead of tabs
    vim.opt_local.shiftwidth = 4 -- Indent level = 4 spaces
    vim.opt_local.tabstop = 4 -- A tab = 4 spaces
    vim.opt_local.softtabstop = 4 -- Backspace/delete uses 4 spaces
  end,
})
