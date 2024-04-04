local function on_attach(bufnr)
  local api = require "nvim-tree.api"
  local function opts(desc)
    return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
  end

  -- default mappings
  api.config.mappings.default_on_attach(bufnr)

  -- custom mappings
  --vim.keymap.set('n', '<C-t>', api.tree.change_root_to_parent, opts('Up'))
  -- vim.keymap.set('n', '?', api.tree.toggle_help, opts('Help'))
  -- vim.keymap.set('n', 'q', api.tree.close, opts('Quit'))
  -- vim.keymap.set('n', 'R', api.tree.refresh, opts('Refresh'))
  vim.keymap.set('n', 'h', api.node.open.horizontal, opts('Open Horizontal'))
  vim.keymap.set('n', 'v', api.node.open.vertical, opts('Open Vertical'))
end

require("nvim-tree").setup({
  on_attach = on_attach,
  sort_by = "case_sensitive",
  view = {
    width = 30,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})

vim.keymap.set('n', '<A-m>', ':NvimTreeFindFile<CR>')
