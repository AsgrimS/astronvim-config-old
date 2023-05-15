local function profile_switcher(to_enable, to_disable)
  local null_ls = require("null-ls")
  for _, name in ipairs(to_enable) do
    null_ls.enable({ name = name })
  end

  for _, name in ipairs(to_disable) do
    null_ls.disable({ name = name })
  end
end

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
        "prismals",
        "taplo",
        "dockerls",
        "docker_compose_language_service",
        -- "pylyzer" keep an eye on this
      },
    },
  },
  {
    "jay-babu/mason-null-ls.nvim",
    opts = {
      ensure_installed = {
        -- JavaScript + other
        "prettierd",
        --Lua
        "stylua",
        -- Rust
        "rustfmt",
        -- Bash
        "shfmt",
        -- Python
        "ruff",
        "black",
        "isort",
        "autopep8",
        -- "flake8",
      },
    },
    keys = {
      {
        "<leader>lpr",
        function() profile_switcher({ "ruff", "black" }, { "isort", "autopep8" }) end,
        desc = "Enable ruff profile",
      },
      {
        "<leader>lpf",
        function() profile_switcher({ "autopep8", "isort" }, { "ruff", "black" }) end,
        desc = "Enable flake8 profile",
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
