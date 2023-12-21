-- TELESCOPE
local telescope = require("telescope.builtin")

vim.keymap.set("n", "<leader>ff", telescope.find_files, {})
vim.keymap.set("n", "<leader>fg", telescope.live_grep, {})
vim.keymap.set('n', '<leader>fs', telescope.grep_string, {})
vim.keymap.set("n", "<leader>fb", telescope.buffers, {})
