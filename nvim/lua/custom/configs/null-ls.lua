local null_ls = require("null-ls")

local group = vim.api.nvim_create_augroup("lsp_format_on_save", { clear = false })
local event = "BufWritePre"
local async = event == "BufWritePost"

local formatting = null_ls.builtins.formatting
local lint = null_ls.builtins.diagnostics

local sources = {
  formatting.prettier,

  lint.shellcheck,
}

null_ls.setup {
  on_attach = function (client, bufnr)
    if client.supports_method("textDocument/formatting") then
      vim.keymap.set("n", "<Leader>fm", function ()
        vim.lsp.buf.format({bufnr = vim.api.nvim_get_current_buf()})
      end, {buffer = bufnr, desc = "[lsp] format"})

      -- format on save
      vim.api.nvim_clear_autocmds({ buffer = bufnr, group = group })
      vim.api.nvim_create_autocmd(event, {
        buffer = bufnr,
        group = group,
        callback = function ()
          vim.lsp.buf.format({ bufnr = bufnr, async = async })
        end,
        desc = "[lsp] format on save"
      })
    end

    if client.supports_method("textDocument/rangeFormatting") then
      vim.keymap.set("X", "<Leader>fm", function ()
        vim.lsp.buf.format({ bufnr = vim.api.nvim_get_current_buf() })
      end, { buffer = bufnr, desc = "[lsp] format" })
    end
  end,
  debug = true,
  sources = sources
}
