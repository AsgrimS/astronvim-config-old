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
      -- { "<leader>a", function() require("harpoon.mark").add_file end,        desc = "Add current file to harpoon" },
      -- { "<leader>h", function() require("harpoon.ui").toggle_quick_menu end, desc = "Toggle harpoon menu" },
    },
  },
}
