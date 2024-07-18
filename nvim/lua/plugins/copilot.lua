return {
  "zbirenbaum/copilot.lua",
  cmd = "Copilot",
  build = ":Copilot auth",
  opts = {
    suggestion = { enabled = false, keymap = { accept = "<C-j>" }, debounce = 500 },
    panel = { enabled = false, position = "bottom", size = 10, keymap = { focus = "<C-p>", accept = "<C-k>" } },
    filetypes = {
      markdown = true,
      help = true,
    },
  },
}
