-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("config.options")
require("config.keymaps")
require("config.autocmds")
vim.diagnostic.enable(true)
vim.lsp.inlay_hint.enable(false)
