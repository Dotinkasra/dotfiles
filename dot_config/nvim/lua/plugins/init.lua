return {
  {
    "joshdick/onedark.vim",
    priority = 1000,
    config = function()
      vim.cmd.colorscheme("onedark")
    end,
  },

  { "itchyny/lightline.vim" },
  { "tpope/vim-surround" },
  { "tpope/vim-commentary" },
  { "christoomey/vim-system-copy" },

  {
    "dominikduda/vim_current_word",
    init = function()
      vim.g["vim_current_word#highlight_current_word"] = 0
      vim.g["vim_current_word#highlight_delay"] = 500
    end,
  },

  { "dense-analysis/ale" },

  { "junegunn/fzf" },
  { "junegunn/fzf.vim" },

  {
    "neoclide/coc.nvim",
    branch = "release",
  },

  {
    "nvim-tree/nvim-web-devicons",
    lazy = true,
  },
  {
    "nvim-tree/nvim-tree.lua",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      require("nvim-tree").setup({
        view = {
          width = 35,
        },
        renderer = {
          group_empty = true,
        },
        filters = {
          dotfiles = false,
        },
      })
    end,
  },

  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    config = function()
      local wk = require("which-key")
      wk.setup({})

      wk.add({
        { "<leader>e", desc = "Explorer toggle" },
        { "<leader>o", desc = "Explorer focus" },

        { "<leader>f", group = "Find" },
        { "<leader>ff", desc = "Files" },
        { "<leader>fg", desc = "Git files" },
        { "<leader>fb", desc = "Buffers" },
        { "<leader>fh", desc = "History" },

        { "<leader>b", group = "Buffer" },
        { "<leader>bd", desc = "Delete" },
        { "<leader>bn", desc = "Next" },
        { "<leader>bp", desc = "Previous" },

        { "<leader>w", group = "Window" },
        { "<leader>wh", desc = "Left" },
        { "<leader>wj", desc = "Down" },
        { "<leader>wk", desc = "Up" },
        { "<leader>wl", desc = "Right" },
        { "<leader>wv", desc = "Split vertical" },
        { "<leader>ws", desc = "Split horizontal" },
        { "<leader>wc", desc = "Close" },

        { "<leader>/", desc = "Clear search highlight" },
      })
    end,
  },
}
