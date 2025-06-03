return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  { "windwp/nvim-autopairs", enabled = false },

  -- test new blink
  -- { import = "nvchad.blink.lazyspec" },
  --
  {
  'mrcjkb/rustaceanvim',
  version = '^6', -- Recommended
  lazy = false, -- This plugin is already lazy
  },

  {
  "lukas-reineke/indent-blankline.nvim",
  enabled = false,
 },

  --{
	--"chrisgrieser/nvim-lsp-endhints",
	--event = "LspAttach",
	--opts = {}, -- required, even if empty
  --},

  -- {
  -- 	"nvim-treesitter/nvim-treesitter",
  -- 	opts = {
  -- 		ensure_installed = {
  -- 			"vim", "lua", "vimdoc",
  --      "html", "css"
  -- 		},
  -- 	},
  -- 
}
