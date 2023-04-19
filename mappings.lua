return {
  n = {
    ["<leader>h"] = false,
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },
    ["<leader>r"] = {
      [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
      desc = "Replace all in file",
    },
    ["<leader>lP"] = { name = " Python" },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
  v = {
    ["J"] = { ":m '>+1<CR>gv=gv", desc = "Move selected block down" },
    ["K"] = { ":m '<-2<CR>gv=gv", desc = "Move selected block up" },
    ["<leader>r"] = {
      'y:%s/<C-r><C-r>"//g<Left><Left>',
      desc = "Replace selected occurrence in file",
    },
  },
}
