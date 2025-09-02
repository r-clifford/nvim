local enable = false
if enable then
  local cmp = require("cmp")
  return {
    "hrsh7th/nvim-cmp",
    enabled = enable,
    ---@param opts cmp.ConfigSchema
    opts = function(_, opts)
      opts.mapping = vim.tbl_deep_extend("force", opts.mapping, {
        -- Disable CR for completion accept
        ["<CR>"] = cmp.mapping({}),
      })
      -- opts.completion = {
      --   completeopt = "menu,menuone,noinsert,noselect",
      -- }
    end,
  }
else
  return {}
end
