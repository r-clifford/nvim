return {
  {
    "chrisgrieser/nvim-rulebook",
    keys = {
      {
        "<leader>ri",
        function()
          require("rulebook").ignoreRule()
        end,
        desc = "Ignore Rule",
      },
      {
        "<leader>rl",
        function()
          require("rulebook").lookupRule()
        end,
        desc = "Lookup Rule",
      },
      {
        "<eader>ry",
        function()
          require("ruebook").yankDiagnosticCode()
        end,
        desc = "Yank Rule Code",
      },
      {
        "<leader>rf",
        function()
          require("rulebook").suppressFormatter()
        end,
        mode = { "n", "x" },
        desc = "Suppress Formatter",
      },
    },
  },
}
