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
        -- Lua
        "lua_ls",
        -- JavaScript + HTML + CSS
        "svelte",
        "tsserver",
        "eslint_d",
        "angularls",
        "cssls",
        "tailwindcss",
        "html",
        "prismals",
        -- Python
        "pylsp",
        -- JSON
        "jsonls",
        -- Rust
        "rust_analyzer",
        -- Bash
        "bashls",
        -- YAML
        "yamlls",
        -- TOML
        "taplo",
        -- Docker
        "dockerls",
        "docker_compose_language_service",
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
        -- Bash
        "shfmt",
        -- SQL
        "sqlfluff",
        -- TOML
        "taplo",
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
