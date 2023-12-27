local M = {}

M.general = {
    n = {
        ["<A-j>"] = {":m .+1<CR>=="},
        ["<A-k>"] = {":m .-2<CR>=="},
      },
    v = {
        ["<A-j>"] = {":m '>+1<CR>gv=gv"},
        ["<A-k>"] = {":m '<-2<CR>gv=gv"},
      },
}

return M
