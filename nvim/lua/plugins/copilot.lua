return {
  "zbirenbaum/copilot.lua",
  cmd = "Copilot",
  build = ":Copilot auth",
  opts = {
    suggestion = { enabled = false, auto_trigger = true, keymap = { accept = "<C-j>" }, debounce = 150 },
    panel = { enabled = true, position = "bottom", size = 10, keymap = { focus = "<C-p>", accept = "<C-k>" } },
    filetypes = {
      markdown = true,
      help = true,
    },
  },
}
