return {
  {
    "williamboman/mason-lspconfig.nvim",
    opts = {
      ensure_installed = {
        "lua_ls",
        "svelte",
        "tsserver",
        "pyright",
        "jsonls",
        "html",
        "eslint",
        "rust_analyzer",
        "bashls",
        "angularls",
        "cssls",
        "tailwindcss",
        "yamlls",
      },
    },
  },
  {
    "jay-babu/mason-null-ls.nvim",
    opts = {
      ensure_installed = { "prettierd", "stylua", "ruff", "rustfmt", "shfmt", "black", "isort" },
    },
    keys = {
      {
        "<leader>lPr",
        function()
          local null_ls = require("null-ls")
          null_ls.disable({ name = "isort" })
          null_ls.disable({ name = "black" })
          null_ls.enable({ name = "ruff" })
        end,
        desc = "Enable ruff",
      },
      {
        "<leader>lPb",
        function()
          local null_ls = require("null-ls")
          null_ls.disable({ name = "ruff" })
          null_ls.enable({ name = "black" })
          null_ls.enable({ name = "isort" })
        end,
        desc = "Enable black and isort",
      },
    },
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    opts = {
      ensure_installed = { "python" },
    },
  },
}
