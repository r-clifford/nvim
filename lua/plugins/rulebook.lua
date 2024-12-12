return {
  {
    "chrisgrieser/nvim-rulebook",
    keys = {
      {
        "<leader>ri",
        function()
          require("rulebook").ignoreRule()
        end,
      },
      {
        "<leader>rl",
        function()
          require("rulebook").lookupRule()
        end,
      },
      {
        "<leader>ry",
        function()
          require("rulebook").yankDiagnosticCode()
        end,
      },
      {
        "<leader>sf",
        function()
          require("rulebook").suppressFormatter()
        end,
        mode = { "n", "x" },
      },
    },
  },
}
