local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
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

local plugins = {
    "tanvirtin/monokai.nvim",
    'nvim-lua/plenary.nvim', 
    {
        'nvim-telescope/telescope.nvim', tag = '0.1.6',
    },
    { 
        'nvim-treesitter/nvim-treesitter', 
        build = ':TSUpdate',
    }
}
local opts = {}

require("lazy").setup(plugins, opts)

