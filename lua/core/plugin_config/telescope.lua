require('telescope').setup({ 
  file_ignore_patterns = { "node%_modules/.*" }, 
   extensions = {
     ["ui-select"] = {
       require("telescope.themes").get_dropdown {
         -- even more opts
       }
     }
   }
})
local builtin = require('telescope.builtin')

vim.keymap.set('n', '<A-p>', builtin.find_files, {})
vim.keymap.set('n', '<Space><Space>', builtin.oldfiles, {})
vim.keymap.set('n', '<A-f>', builtin.live_grep, {})

require("telescope").load_extension("ui-select")
