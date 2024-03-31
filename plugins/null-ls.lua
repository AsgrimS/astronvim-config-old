return {
  "jose-elias-alvarez/null-ls.nvim",
  opts = function(_, config)
    -- config variable is the default configuration table for the setup function call
    local null_ls = require("null-ls")
    -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
    -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
    config.sources = {
      -- Set a formatter
      -- null_ls.builtins.formatting.stylua,
      null_ls.builtins.formatting.prettierd.with({
        extra_filetypes = { "svelte" },
      }),
      null_ls.builtins.diagnostics.sqlfluff.with({
        extra_args = { "--dialect", "postgres" },
      }),
      null_ls.builtins.formatting.sqlfluff.with({
        extra_args = { "--dialect", "postgres" },
      }),
      null_ls.builtins.formatting.taplo.with({
        extra_args = {
          "--option",
          "array_auto_collapse=false",
          "--option",
          "reorder_arrays=true",
          "--option",
          "indent_string=    ",
        },
      }),
    }

    return config -- return final config table
  end,
}
