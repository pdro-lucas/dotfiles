local opt = vim.opt

vim.scriptenconding = "utf-8"

opt.title = true -- Set the title of the window to the value of the titlestring
opt.autoindent = true -- Automatically set indent of new line
opt.smartindent = true -- Smart indenting
opt.hlsearch = true -- Highlight search results
opt.backup = false -- Do not create backup files
opt.showcmd = true -- Show command in status line
opt.cmdheight = 0 -- Height of the command line
opt.laststatus = 0 -- Do not show status line
opt.expandtab = true -- Use spaces instead of tabs
opt.cursorline = false -- Highlight the current line
opt.scrolloff = 10 -- Minimum number of lines to keep above and below the cursor
opt.inccommand = "split" -- Show live preview of substitution
opt.ignorecase = true -- Ignore case when searching
opt.breakindent = true -- Enable break indent
opt.shiftwidth = 2 -- Number of spaces to use for autoindent
opt.tabstop = 2 -- Number of spaces that a <Tab> in the file counts for
opt.wrap = false -- Do not wrap lines
opt.backspace = { "indent", "eol", "start" } -- Allow backspacing over everything in insert mode
opt.path:append({ "**" }) -- Search in subdirectories
opt.wildignore:append({ "*/node_modules/*", ".git", ".DS_Store" }) -- Ignore these files
opt.splitbelow = true -- Split below instead of above
opt.splitright = true -- Split right instead of left
opt.splitkeep = "cursor" -- Keep windows open when closing a buffer
opt.mouse = ""
opt.formatoptions:remove({ "r" }) -- Do not automatically insert the comment leader after hitting <Enter>

opt.clipboard = vim.env.SSH_TTY and "" or "unnamedplus" -- Use the system clipboard
