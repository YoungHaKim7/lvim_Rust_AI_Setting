-- AI tabby setting

-- Additional Plugins
lvim.plugins = {
  "folke/tokyonight.nvim",
  "lvimuser/lsp-inlayhints.nvim",
  "j-hui/fidget.nvim",
  -- {
  --   "tpope/vim-surround",

  --   -- make sure to change the value of `timeoutlen` if it's not triggering correctly, see https://github.com/tpope/vim-surround/issues/117
  --   -- setup = function()
  --     --  vim.o.timeoutlen = 500
  --   -- end
  -- },
  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    config = function()
        require("nvim-surround").setup({
            -- Configuration here, or leave empty to use defaults
        })
    end
  },
  {
    "nvim-lua/plenary.nvim",
  },
  {
    "nvim-telescope/telescope.nvim",
  },
  {
    "rafamadriz/friendly-snippets"
  },
  {
    "simrat39/symbols-outline.nvim",
    -- config = function()
    --   require("symbols-outline").setup()
    -- end,
  },
  "mxsdev/nvim-dap-vscode-js",
  {
    "folke/trouble.nvim",
    dependencies = "nvim-tree/nvim-web-devicons",
  },
  "simrat39/rust-tools.nvim",
  {
    "saecki/crates.nvim",
    version = "v0.3.0",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("crates").setup {
        null_ls = {
          enabled = true,
          name = "crates.nvim",
        },
        popup = {
          border = "rounded",
        },
      }
    end,
  },
  -- :UnicodeTable    - Print Unicode Table in new window
  "chrisbra/unicode.vim",
  -- cargo fmt
  {
    "rust-lang/rust.vim",
    ft = "rust",
    init = function ()
      vim.g.rustfmt_autosave = 1
    end
  },
  {
    "TabbyML/vim-tabby",
    init = function ()
      vim.g.tabby_keybinding_accept = '<C-b>'
    end
  },
}
