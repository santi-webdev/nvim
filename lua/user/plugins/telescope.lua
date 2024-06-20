local M = {
  "nvim-telescope/telescope.nvim",
  cmd = {
    "Telescope",
  },
  keys = {
    "<Leader>tf",
    "<Leader>tg",
    "<Leader>tb",
    "<Leader><C-p>",
    "<Leader>tr",
  },
}

function M.config()
  -- require("telescope").setup()
  vim.keymap.set("n", "<Leader>tf", require("telescope.builtin").find_files)
  vim.keymap.set("n", "<Leader>tg", require("telescope.builtin").grep_string)
  vim.keymap.set("n", "<Leader>tb", require("telescope.builtin").buffers)
  vim.keymap.set("n", "<Leader><C-p>", require("telescope").extensions.projects.projects)
  vim.keymap.set("n", "<Leader>tr", require("telescope.builtin").resume)
end

return M
