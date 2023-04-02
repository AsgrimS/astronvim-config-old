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
  {
    "ThePrimeagen/harpoon",
    dependencies = { "nvim-lua/plenary.nvim" },
    keys = {
      {
        "<leader>ha",
        function() require("harpoon.mark").add_file() end,
        desc = "Mark current file",
      },
      { "<leader>hh", function() require("harpoon.ui").toggle_quick_menu() end, desc = "Toggle harpoon menu" },
      { "<leader>hj", function() require("harpoon.ui").nav_next() end, desc = "Navigate to next mark" },
      { "<leader>hk", function() require("harpoon.ui").nav_prev() end, desc = "Navigate to previous mark" },
    },
  },
}
