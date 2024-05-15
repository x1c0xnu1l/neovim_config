local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

local lualine_plugin = {
    'nvim-lualine/lualine.nvim',
    config = function()
        require('lualine').setup()
    end
}
local toggleterm={
    "akinsho/toggleterm.nvim", 
    config = function()
        require("toggleterm").setup()
    end
}

if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)


require("lazy").setup({lualine_plugin,toggleterm})
