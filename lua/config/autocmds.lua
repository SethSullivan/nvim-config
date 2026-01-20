-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

-- 1. Global JSX styling (Tree-sitter)

vim.api.nvim_create_autocmd({ "ColorScheme", "LspAttach" }, {
  callback = function()
    -- JSX tag names (this hits custom components)
    local jsx_groups = {
      "@tag",
      "@tag.jsx",
      "@tag.tsx",
      "@tag.builtin.jsx",
      "@tag.builtin.tsx",
    }

    for _, group in ipairs(jsx_groups) do
      vim.api.nvim_set_hl(0, group, {
        bold = true,
        italic = false,
      })
    end

    -- LSP-known components (React, RN, etc.)
    local lsp_groups = {
      "@lsp.type.class",
      "@lsp.type.component",
    }

    for _, group in ipairs(lsp_groups) do
      vim.api.nvim_set_hl(0, group, {
        bold = true,
        italic = false,
      })
    end

    -- Make sure attributes stay normal
    local normal = {
      "@tag.attribute",
      "@property",
    }

    for _, group in ipairs(normal) do
      vim.api.nvim_set_hl(0, group, {
        bold = false,
        italic = false,
      })
    end
  end,
})
