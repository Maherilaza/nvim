vim.g.base46_cache = vim.fn.stdpath "data" .. "/base46/"
vim.g.mapleader = "?"

-- bootstrap lazy and all plugins
local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"

if not vim.uv.fs_stat(lazypath) then
  local repo = "https://github.com/folke/lazy.nvim.git"
  vim.fn.system { "git", "clone", "--filter=blob:none", repo, "--branch=stable", lazypath }
end

vim.opt.rtp:prepend(lazypath)

local lazy_config = require "configs.lazy"

-- load plugins
require("lazy").setup({
  {
    "NvChad/NvChad",
    lazy = false,
    branch = "v2.5",
    import = "nvchad.plugins",
  },

  { import = "plugins" },
}, lazy_config)

-- load theme
dofile(vim.g.base46_cache .. "defaults")
dofile(vim.g.base46_cache .. "statusline")

require "options"
require "nvchad.autocmds"

vim.schedule(function()
  require "mappings"
end)

vim.g.clipboard = {
  name = "WslClipboard",
  copy = {
    ["+"] = "clip.exe",
    ["*"] = "clip.exe"
  },
  paste = {
    ["+"] = "powershell.exe -NoLogo -NoProfile -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace(\"`r\", \"\"))",
    ["*"] = "powershell.exe -NoLogo -NoProfile -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace(\"`r\", \"\"))"
  },
  cache_enabled = 0,
}

vim.cmd([[let &t_SI = "\e[2 q"]])

vim.api.nvim_create_autocmd("InsertEnter", {
  pattern = "*",
  command = "set guicursor=n-v-c:block,i:block"
})

vim.api.nvim_create_autocmd("InsertLeave", {
  pattern = "*",
  command = "set guicursor=n-v-c:block,i:block"
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "c",
  callback = function()
    vim.opt_local.shiftwidth = 4
    vim.opt_local.tabstop = 4
    vim.opt_local.expandtab = true
  end,
})

vim.cmd("cnoreabbrev m Man")
vim.cmd("cnoreabbrev man Man")
vim.cmd("colorscheme cosmic")

vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    vim.cmd("colorscheme cosmic")
    vim.api.nvim_set_hl(0, "LineNr", { fg = "#FF8800" })
  end,
})

vim.o.laststatus = 2  -- always show statusline
vim.o.showmode = true -- show -- INSERT -- etc.


