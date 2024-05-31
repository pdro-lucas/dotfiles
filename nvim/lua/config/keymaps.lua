local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Split windows
keymap.set("n", "ss", ":split<Return>", opts)
keymap.set("n", "sv", ":vsplit<Return>", opts)

-- Move window
keymap.set("n", "sh", "<C-w>h") -- Move to left window using Ctrl + h
keymap.set("n", "sk", "<C-w>k") -- Move to top window using Ctrl + k
keymap.set("n", "sj", "<C-w>j") -- Move to bottom window using Ctrl + j
keymap.set("n", "sl", "<C-w>l") -- Move to right window using Ctrl + l

-- Resize window
keymap.set("n", "<C-S-h>", "<C-w><")
keymap.set("n", "<C-S-k>", "<C-w>+")
keymap.set("n", "<C-S-j>", "<C-w>-")
keymap.set("n", "<C-S-l>", "<C-w>>")

-- Save file and quit
keymap.set("n", "<Leader>w", ":update<Return>", opts)
keymap.set("n", "<Leader>q", ":quit<Return>", opts)
keymap.set("n", "<Leader>Q", ":qa<Return>", opts)

-- Tabs
keymap.set("n", "te", ":tabedit")
keymap.set("n", "<tab>", ":bnext<Return>", opts)
keymap.set("n", "<s-tab>", ":bprev<Return>", opts) -- Shift + tab
keymap.set("n", "tw", ":tabclose<Return>", opts)
keymap.set("n", "tn", ":tabnew<Return>", opts)
