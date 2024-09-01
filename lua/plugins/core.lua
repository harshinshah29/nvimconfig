local leet_arg = "leetcode.nvim"
return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
  {
    "mfussenegger/nvim-lint",

    opts = {
      linters = {
        -- This stops _all_ linting from running on markdown.
        ["markdownlint-cli2"] = {
          args = { "--config", "~/.markdownlint-cli2.yaml", "--" },
        },
      },
    },
  },
  {
    "Pocco81/auto-save.nvim",
    config = function()
      require("auto-save").setup({
        -- your config goes here
        -- or just leave it empty :)
      })
    end,
  },
  {
    "lmantw/themify.nvim",

    lazy = false,
    priority = 999,

    config = {},
  },
  {
    "kawre/leetcode.nvim",
    build = ":TSUpdate html",
    dependencies = {
      "nvim-telescope/telescope.nvim",
      "nvim-lua/plenary.nvim", -- required by telescope
      "MunifTanjim/nui.nvim",

      -- optional
      "nvim-treesitter/nvim-treesitter",
      "rcarriga/nvim-notify",
      "nvim-tree/nvim-web-devicons",
    },
    lazy = leet_arg ~= vim.fn.argv()[1],
    opts = { arg = leet_arg },
  },
  { "elihunter173/dirbuf.nvim" },
}
