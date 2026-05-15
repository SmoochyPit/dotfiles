return {
  {
    "christoomey/vim-tmux-navigator",
    cmd = {
      "TmuxNavigateLeft",
      "TmuxNavigateDown",
      "TmuxNavigateUp",
      "TmuxNavigateRight",
      "TmuxNavigatePrevious",
    },
    keys = {
      { "<c-h>", "<cmd><C-U>TmuxNavigateLeft<cr>" },
      { "<c-j>", "<cmd><C-U>TmuxNavigateDown<cr>" },
      { "<c-k>", "<cmd><C-U>TmuxNavigateUp<cr>" },
      { "<c-l>", "<cmd><C-U>TmuxNavigateRight<cr>" },
      { "<c-\\>", "<cmd><C-U>TmuxNavigatePrevious<cr>" },
    },
  },

  {
    "instant-markdown/vim-instant-markdown",
    ft = "markdown",
    config = function()
      require "configs.vim-instant-markdown"
    end,
  },

  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    opts = require "configs.lspconfig"
  },

  {
  	"nvim-treesitter/nvim-treesitter",
  	opts = {
  		ensure_installed = {
  			"vim", "lua", "vimdoc",
       "html", "css", "rust"
  		},
  	},
  },

  {
    "tpope/vim-obsession",
    cmd = "Obsession",
  },

  {
    "vimwiki/vimwiki",
    event = "BufEnter *.md",
    keys = {
        "<leader>ww",
        "<leader>wt",
        "<leader>w<leader>w"
    },
    init = function()
        require "configs.vimwiki"
    end
  },
  {
    "glacambre/firenvim",
    lazy = not vim.g.started_by_firenvim,
    module = false,
    build = function()
      vim.fn["firenvim#install"](0)
    end,
  }
}
