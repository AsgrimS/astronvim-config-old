return {
  "iamcco/markdown-preview.nvim",
  build = function() vim.fn["mkdp#util#install"]() end,
  event = "User AstroFile",
  keys = {
    {
      "<leader>m",
      "<cmd>MarkdownPreviewToggle<cr>",
      desc = "Toggle markdown preview",
    },
  },
}
