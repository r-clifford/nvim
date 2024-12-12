return {
  {
    "michaelb/sniprun",
    branch = "master",

    build = "sh install.sh",
    -- do 'sh install.sh 1' if you want to force compile locally
    -- (instead of fetching a binary from the github release). Requires Rust >= 1.65
    --
    opts = {},
    -- config = function()
    --   require("sniprun").setup({
    --     -- your options
    --   })
    -- end,
  },
},
  vim.api.nvim_set_keymap("n", "<F12>", "<Plug>SnipRun", { silent = true, desc = "Run selection" }),
  vim.api.nvim_set_keymap("i", "<F12>", "<Plug>SnipRun", { silent = true, desc = "Run selection" }),
  vim.api.nvim_set_keymap("v", "<F12>", "<Plug>SnipRun", { silent = true, desc = "Run selection" })
