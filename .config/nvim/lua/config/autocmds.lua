-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")
vim.api.nvim_create_autocmd("FileType", {
  pattern = "markdown",
  callback = function()
    vim.opt_local.spell = false
  end,
})
-- When opening a directory, cd into it automatically
vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    local arg = vim.fn.argv(0)
    if arg ~= "" and vim.fn.isdirectory(arg) == 1 then
      vim.cmd("cd " .. arg)
      -- Optionally open a file browser (like oil.nvim or telescope-file-browser)
      -- require("oil").open(arg)
    end
  end,
})
vim.api.nvim_create_autocmd("DirChanged", {
  callback = function()
    local cwd = vim.fn.getcwd()
    local esc = "\27]7;file://" .. vim.fn.hostname() .. cwd .. "\07"
    io.write(esc)
    vim.fn.jobstart({ "zoxide", "add", cwd })
  end,
})
