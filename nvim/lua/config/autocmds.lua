-- Disable the concealing in some file formats
-- The default conceallevel is 3 in lazyvim
vim.api.nvim_create_autocmd({ "FileType" }, {
  pattern = { "json", "jsonc", "markdown" },
  callback = function()
    vim.wo.conceallevel = 0
  end,
})
