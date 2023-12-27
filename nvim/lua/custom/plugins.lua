local plugins = {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "typescript-language-server",
        "tailwindcss-language-server"
      }
    }
  },
  {
    "neovim/nvim-lspconfig",
    config = function ()
      require("plugins.configs.lspconfig")
      require("custom.configs.lspconfig")
    end
  },
  {
    "NvChad/nvim-colorizer.lua",
    config = function ()
     require("colorizer").setup({
        user_default_options = {
          tailwind = true
        },
      })
    end
  },
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      {"roobert/tailwindcss-colorizer-cmp.nvim", config = true}
    },
    opts = function(_, opts)
      local format_kinds = opts.formatting.format
      opts.formatting.format = function (entry, item)
        format_kinds(entry, item) -- add icons
        return require("tailwindcss-colorizer-cmp").formatter(entry, item)
      end
    end
  }
}

return plugins
