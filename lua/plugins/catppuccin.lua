return {
    "catppuccin/nvim",
    config = function()
      require("catppuccin").setup({
        flavour = "mocha", -- Change "mocha" to your desired flavour (if available)
      })
    end,
  }
