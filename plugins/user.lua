return {
  {
    "navarasu/onedark.nvim",
    lazy = false,
    priority = 1000,
  },
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {},
    keys = {
      { "<leader>T", "<cmd>TodoTelescope<cr>", desc = "Open TODOs in the Telescope" },
    },
    event = "User AstroFile",
  },
  {
    "mbbill/undotree",
    keys = {
      { "<leader>U", "<cmd>UndotreeToggle<cr>", desc = "Toggle Undotree" },
    },
  },
}
