-- ~/.config/nvim/lua/plugins/colorscheme.lua

return {
  { "lunarvim/horizon.nvim" },
  { "ellisonleao/gruvbox.nvim" },
  { "rebelot/kanagawa.nvim" },
  { "olimorris/onedarkpro.nvim" },
  { "tanvirtin/monokai.nvim" },
  {
    "navarasu/onedark.nvim",
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    opts = {
      flavour = "mocha", -- latte, frappe, macchiato, mocha
      auto_integrations = true,
      no_italic = false,
      no_bold = false,
      styles = {
        comments = { "italic" },
        conditionals = {},
        loops = {},
        functions = {},
        keywords = {},
        strings = {},
        variables = {},
        numbers = {},
        booleans = {},
        properties = {},
        types = {},
        operators = {},
      },
      color_overrides = {
        mocha = {
          text = "#FFD9EC",
          subtext1 = "#DEBAD4",
          subtext0 = "#C8A6BE",
          overlay2 = "#B293A8",
          overlay1 = "#9C7F92",
          overlay0 = "#866C7D",
          surface2 = "#705867",
          surface1 = "#5A4551",
          surface0 = "#44313B",
          base = "#141414",
          mantle = "#211924",
          crust = "#1a1016",
          yellow = "#EEBF43",
          mauve = "#784B84",
          red = "#EA404D",
          pink = "#FB4BBB",
          peach = "#FF782F",
          green = "#87A96B",
          maroon = "#6D213C",
          teal = "#80B9B1",
          lavendar = "#B56AB2",
        },
      },
      custom_highlights = function(colors)
        return {
          TabLineSel = { bg = colors.pink },
          CmpBorder = { fg = colors.surface2 },
          Pmenu = { bg = colors.none },
          -- React component color
          ["@type.tsx"] = { fg = colors.red, bold = true },
          -- Variables
          ["@variable"] = { fg = colors.text },
          ["@variable.ts"] = { fg = colors.text },
          ["@variable.tsx"] = { fg = colors.text, bold = false },
          -- Strings
          ["@string"] = { fg = colors.green },
          ["@string.ts"] = { fg = colors.green },
          ["@string.tsx"] = { fg = colors.green },
          -- Function arguments
          ["@variable.parameter"] = { fg = colors.flamingo },
          ["@variable.parameter.ts"] = { fg = colors.flamingo },
          ["@variable.parameter.tsx"] = { fg = colors.flamingo },
          -- Function definitions
          ["@function"] = { fg = colors.yellow, bold = false },
          ["@function.tsx"] = { fg = colors.yellow, bold = false },
          -- Types
          ["@type"] = { fg = colors.peach },
          ["@type.ts"] = { fg = colors.peach },
          ["@type.builtin"] = { fg = colors.peach },
          ["@type.builtin.ts"] = { fg = colors.peach },
          ["@type.builtin.tsx"] = { fg = colors.peach, bold = true },
          -- Object keys / properties
          ["@property"] = { fg = colors.peach },
          ["@property.ts"] = { fg = colors.peach },
          ["@property.tsx"] = { fg = colors.peach },
          -- Props in React components
          ["@tag.attribute"] = { fg = colors.sapphire },
          ["@tag.attribute.ts"] = { fg = colors.sapphire },
          ["@tag.attribute.tsx"] = { fg = colors.sapphire },
          -- Import keywords
          ["@keyword.import"] = { fg = colors.mauve },
          -- export
          ["@keyword.export"] = { fg = colors.mauve },
          -- operator
          ["@keyword.operator.tsx"] = { fg = colors.mauve },
          -- default keyword
          ["@keyword.tsx"] = { fg = colors.sapphire },
          -- function keyword
          ["@keyword.function"] = { fg = colors.sapphire },
          -- Conditionals and loops
          ["@keyword.conditional"] = { fg = colors.lavendar, bold = true },
          ["@keyword.loop"] = { fg = colors.lavendar, bold = true },
          -- returns keyword
          ["@keyword.return"] = { fg = colors.lavendar, bold = true },
        }
      end,
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}
