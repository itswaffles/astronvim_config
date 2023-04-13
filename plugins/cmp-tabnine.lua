return {
  {
    "tzachar/cmp-tabnine",
    build = "./install.sh",
    dependencies = "hrsh7th/nvim-cmp",
  },
  {
    "hrsh7th/nvim-cmp",
    opts = function(_, opts)
      local cmp = require("cmp")
      -- extend original source list
      opts.sources = cmp.config.sources(vim.list_extend(opts.sources, { { name = "cmp_tabnine" } }))
    end,
  },
}
