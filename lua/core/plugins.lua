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

require("lazy").setup({
	{'phaazon/hop.nvim'},
{
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
      's1n7ax/nvim-window-picker',
      "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    },
    opts = {
        filesystem = {
             filtered_items = {
	 visible = true,
	 show_hidden_count = true,
	 hide_dotfiles = false,
	 hide_gitignored = true,
	 hide_by_name = {
	   -- '.git',
	   -- '.DS_Store',
	   -- 'thumbs.db',
	 },
	never_show = {},
      },
        }
    }
},
{'nvim-treesitter/nvim-treesitter'},
{'neovim/nvim-lspconfig'},
{'joshdick/onedark.vim'},
 {'hrsh7th/cmp-nvim-lsp'}, {'hrsh7th/cmp-buffer'}, {'hrsh7th/cmp-path'},
    {'hrsh7th/cmp-cmdline'}, {'hrsh7th/nvim-cmp'}, {'lewis6991/gitsigns.nvim'},
       { 'hrsh7th/vim-vsnip' },
    {'hrsh7th/vim-vsnip-integ'},
      {"williamboman/mason.nvim"},
        {
    'nvim-telescope/telescope.nvim', tag = '0.1.5',
-- or                              , branch = '0.1.x',
      dependencies = { 'nvim-lua/plenary.nvim' }
    },
        {'windwp/nvim-autopairs'},
    {'Djancyp/outline'}, {'terrortylor/nvim-comment'},
    {'windwp/nvim-ts-autotag'}, {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v2.x",
        dependencies = {
            "nvim-lua/plenary.nvim", "nvim-tree/nvim-web-devicons",
            "MunifTanjim/nui.nvim", "s1n7ax/nvim-window-picker"
        }
    },
       {'hrsh7th/cmp-nvim-lsp-signature-help'}, {
        'linrongbin16/lsp-progress.nvim',
        event = {'VimEnter'},
        dependencies = {'nvim-tree/nvim-web-devicons'},
        config = function() require('lsp-progress').setup() end
    }, {
        'glepnir/dashboard-nvim',
        event = 'VimEnter',
        dependencies = {{'nvim-tree/nvim-web-devicons'}}
    }, {"folke/which-key.nvim"},
       { 'hrsh7th/vim-vsnip' },
    {'hrsh7th/vim-vsnip-integ'},
    {'morhetz/gruvbox'},
    {'kaicataldo/material.vim'},
    {'pocco81/auto-save.nvim'},
    {'norcalli/nvim-colorizer.lua'},
    {'github/copilot.vim'},
    {
    "nvimdev/guard.nvim",
    -- Builtin configuration, optional
    dependencies = {
        "nvimdev/guard-collection",
    },
},
    {'SirVer/ultisnips'},
{'mlaursen/vim-react-snippets'},
{'tpope/vim-commentary'}


})

