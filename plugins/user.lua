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
      { "<leader>hj", function() require("harpoon.ui").nav_next() end,          desc = "Navigate to next mark" },
      { "<leader>hk", function() require("harpoon.ui").nav_prev() end,          desc = "Navigate to previous mark" },
    },
  },

  {
    "zbirenbaum/copilot.lua",
    enabled = true,
    cmd = "Copilot",
    event = "InsertEnter",
    opts = {
      suggestion = { enabled = false },
      panel = { enabled = false },
    },
  },

  {
    "nvim-cmp",
    dependencies = {
      {
        "zbirenbaum/copilot-cmp",
        opts = {},
      },
    },
    ---@param opts cmp.ConfigSchema
    opts = function(_, opts)
      local cmp = require "cmp"
      local lspkind = require "lspkind"
      local api = vim.api

      ---@diagnostic disable-next-line: missing-parameter
      opts.sources = cmp.config.sources(vim.list_extend(opts.sources, { { name = "copilot" } }))
      lspkind.init {
        symbol_map = {
          Copilot = "",
        },
      }
      api.nvim_set_hl(0, "CmpItemKindCopilot", { fg = "#E06C75" })
    end,
  },
}
