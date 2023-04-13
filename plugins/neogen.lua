return {
  {
    "danymat/neogen",
    enabled = false,
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
    },
    opts = {
      -- set snippet engine
      snippet_engine = "luasnip",
      -- set languages
      languages = {
        typescript = {
          annotation_convention = "tsdoc",
        },
      },
    },
    keys = {
      { "<leader>d", desc = "Generate Docs" },
      {
        "<leader>dd",
        function()
          require("neogen").generate({})
        end,
        desc = "Generate for current context",
      },
      {
        "<leader>dc",
        function()
          require("neogen").generate({ type = "class" })
        end,
        desc = "Generate for class",
      },
      {
        "<leader>dt",
        function()
          require("neogen").generate({ type = "type" })
        end,
        desc = "Generate for type",
      },
      {
        "<leader>df",
        function()
          require("neogen").generate({ type = "func" })
        end,
        desc = "Generate for function",
      },
    },
  },
}
