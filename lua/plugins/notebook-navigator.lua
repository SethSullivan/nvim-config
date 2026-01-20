return {
  "GCBallesteros/NotebookNavigator.nvim",
  keys = {
    {
      "]h",
      function()
        require("notebook-navigator").move_cell("d")
      end,
    },
    {
      "[h",
      function()
        require("notebook-navigator").move_cell("u")
      end,
    },
    { "<leader>mr", "<cmd>lua require('notebook-navigator').run_cell()<cr>" },
    { "<leader>mn", "<cmd>lua require('notebook-navigator').run_and_move()<cr>" },
  },
  dependencies = {
    "nvim-mini/mini.comment",
    -- "hkupty/iron.nvim", -- repl provider
    -- "akinsho/toggleterm.nvim", -- alternative repl provider
    "benlubas/molten-nvim", -- alternative repl provider
    -- "anuvyklack/hydra.nvim",
  },
  opts = {
    repl_provider = "molten", -- "iron" or "toggleterm" or "molten"
    highlight = {
      focused_cell = {
        enabled = true,
        timeout = 500,
      },
    },
    mappings = {
      notebook = {
        run_cell = "<leader>mr",
        run_and_move = "<leader>mn",
        move_cell_up = "[h",
        move_cell_down = "]h",
      },
    },
  },
  event = "VeryLazy",
  -- config = function()
  --   local nn = require("notebook-navigator")
  --   nn.setup({ activate_hydra_keys = "<leader>h" })
  -- end,
}
