return {
  -- Plugin Manager
  "folke/lazy.nvim",

  -- Essential plugins
  {
    "nvim-lua/plenary.nvim", -- Useful Lua functions used by many plugins
  },
  -- Auto pairs
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = function()
      require("nvim-autopairs").setup()
    end,
  },
  
  -- Surround
  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup({
        -- Configuration here, or leave empty to use defaults
      })
    end,y
  },
  
  -- Comments
  {
    "numToStr/Comment.nvim",
    config = function()
      require("Comment").setup()
    end,
  },

} 