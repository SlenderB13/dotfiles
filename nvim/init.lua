local opt = vim.opt
opt.number = true
opt.relativenumber = true
vim.opt.tabstop = 3
vim.opt.shiftwidth = 3
vim.opt.expandtab = true
vim.bo.softtabstop = 2
vim.opt.colorcolumn = "120"

-- Lazy manager
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
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
	{"rose-pine/neovim", name="rose-pine"},
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
	{"nvim-telescope/telescope.nvim", dependencies = {"nvim-lua/plenary.nvim"}},
	{"neovim/nvim-lspconfig"},
	{"nvim-treesitter/nvim-treesitter"},
	{"nvim-lualine/lualine.nvim", dependencies = {"nvim-tree/nvim-web-devicons"}},
	--{"windwp/nvim-autopairs", event = "InsertEnter", opts = {}},
	{'jose-elias-alvarez/null-ls.nvim'},
	{'lewis6991/gitsigns.nvim', lazy = true},
	{'MunifTanjim/prettier.nvim'},
  --{'akinsho/bufferline.nvim', version = "*"},
  {'nvimdev/lspsaga.nvim'},
  {'nvim-tree/nvim-tree.lua'},
  {'folke/trouble.nvim'},
  {'tpope/vim-fugitive'},
  -- {'Exafunction/codeium.vim', event = 'BufEnter'},
	-- LSP Support
	  {
	    'VonHeikemen/lsp-zero.nvim',
	    branch = 'v3.x',
	    lazy = true,
	    config = false,
	  },
	  {
	    'neovim/nvim-lspconfig',
	    dependencies = {
	      {'hrsh7th/cmp-nvim-lsp'},
	    }
	  },
	  -- Autocompletion
	  {
	    'hrsh7th/nvim-cmp',
	    dependencies = {
	      {'L3MON4D3/LuaSnip'}
	    },
	  },
}

local opts = {}
require("lazy").setup(plugins, opts)


-- Lualine
require('lualine').setup({
  sections = {
    lualine_a = {
      {
        'buffers',
      }
    }
  },
  options = {
    theme = 'auto'
  }
})

-- CMP
require('lsp-config')

-- Prettier
-- require('prettier-config')

-- Calling plugins and confis
require("keymaps")

-- GitSign
require("gitsigns").setup()

-- Bufferline
--require("bufferline").setup()

-- LSPsaga
require("lspsaga").setup({

})

-- NvimTree
--require("nvim-tree").setup({
--  view = {
--    float = {
--      enable = true,
--      quit_on_focus_loss = true,
--    }
--  }
--})

-- Treesitter
require("nvim-treesitter.configs").setup({
  highlight = {enable = true},
  indent = {enable = true},
})

-- Trouble
require("trouble").setup({})

-- Colorscheme
require("rose-pine").setup({
  styles = {
    bold = true,
    italic = false
  },
  disable_italics = true,
})
vim.cmd("colorscheme rose-pine-moon")
