-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set(
  "n",
  "<leader>sx",
  require("telescope.builtin").resume,
  { noremap = true, silent = true, desc = "Resume" }
)

-- This is for setting the behaviour for alt+backspace key in linux --> NOTE: Please change accordingly for macOS

vim.keymap.set("i", "<A-BS>", "<C-w>", { noremap = true, silent = true, desc = "Delete previous word" })

-- This is for the cwd search using the leader + leader
vim.keymap.set("n", "<leader><leader>", function()
  require("telescope.builtin").find_files({ cwd = vim.fn.getcwd() })
end, { noremap = true, silent = true, desc = "Find files in cwd" })
