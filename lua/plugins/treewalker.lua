return {
  "aaronik/treewalker.nvim",
  opts = {
    highlight = true, -- briefly highlight the node after jumping to it
  },
  keys = {
    { "<C-j>", "<cmd>Treewalker Down<CR>", { noremap = true } },
    { "<C-k>", "<cmd>Treewalker Up<CR>", { noremap = true } },
    { "<C-h>", "<cmd>:Treewalker Left<CR>", { noremap = true } },
    { "<C-l>", "<cmd>:Treewalker Right<CR>", { noremap = true } },
  },
}
