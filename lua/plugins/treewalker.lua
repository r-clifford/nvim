return {
  "aaronik/treewalker.nvim",
  opts = {
    highlight = true, -- briefly highlight the node after jumping to it
  },
  keys = {
    { "<C-down>", "<cmd>Treewalker Down<CR>", { noremap = true } },
    { "<C-up>", "<cmd>Treewalker Up<CR>", { noremap = true } },
    { "<C-left>", "<cmd>:Treewalker Left<CR>", { noremap = true } },
    { "<C-right>", "<cmd>:Treewalker Right<CR>", { noremap = true } },
  },
}
