return {
  {
    "stevearc/conform.nvim",
    optional = true,
    opt = {
      formatters_by_ft = {
        php = { { "pint", "php_cs_fixer" } },
      },
    },
  },

  {
    "nvim-neotest/neotest",
    dependencies = { "V13Axel/neotest-pest" },
    opts = { adapters = { "neotest-pest" } },
  },
}
