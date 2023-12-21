local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
	{"rebelot/kanagawa.nvim"},
	{
        "nvim-telescope/telescope.nvim",
		    tag = "0.1.5",
      		dependencies = { "nvim-lua/plenary.nvim" }
	},
	{"nvim-treesitter/nvim-treesitter"},
    {"sindrets/diffview.nvim"},
    {"williamboman/mason.nvim"},
    {"williamboman/mason-lspconfig.nvim"},
    {"neovim/nvim-lspconfig"},
    {"hrsh7th/nvim-cmp"},
    {"hrsh7th/cmp-nvim-lsp"},
    {"L3MON4D3/LuaSnip"}
}

local opts = {}

require("lazy").setup(plugins, opts)

-- TREESITTER
vim.cmd("TSUpdate")
require("nvim-treesitter.configs").setup({
	highlight = {
		enable = true,
		additional_vim_regex_highlighting = false
	}
})

