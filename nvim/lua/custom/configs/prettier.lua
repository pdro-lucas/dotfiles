local prettier = require("prettier")

prettier.setup {
  bin = 'prettier',
  filetypes = {
    "html",
    "css",
    "javascript",
    "javascriptreact",
    "typescript",
    "typescriptreact",
    "markdown",
    "json",
  }
}
