return {

  "Vigemus/iron.nvim",
  config = function()
    local iron = require("iron.core")
    local common = require("iron.fts.common")
    local view = require("iron.view")
    iron.setup({
      config = {
        -- Whether a repl should be discarded or not
        scratch_repl = false,
        -- Your repl definitions come here
        repl_definition = {
          sh = {
            -- Can be a table or a function that
            -- returns a table (see below)
            command = { "zsh" },
          },
          python = {
            command = { "ipython", "--no-autoindent" },
            format = common.bracketed_paste_python,
            block_dividers = { "# %%", "#%%" },
            env = { PYTHON_BASIC_REPL = "1" }, --this is needed for python3.13 and up.
          },
        },
        -- How the repl window will be displayed
        -- See below for more information
        -- Bottom right floating
        -- repl_open_cmd = view.offset({
        --   width = 80,
        --   height = 30,
        --   -- `view.helpers.proportion` allows you to apply a relative
        --   -- offset considering the REPL window size.
        --   -- for example, 0.5 will centralize the REPL in that dimension,
        --   -- 0 will pin it to the top/left and 1 will pin it to the bottom/right.
        --   h_offset = view.helpers.proportion(0.95),
        --   w_offset = view.helpers.proportion(1),
        -- }),
        repl_open_cmd = require("iron.view").split.vertical.botright("40%"),
      },
      -- Iron doesn't set keymaps by default anymore.
      -- You can set them here or manually add keymaps to the functions in iron.core
      keymaps = {
        send_motion = "<space>ic",
        visual_send = "<space>ic",
        send_file = "<space>if",
        send_line = "<space>il",
        send_code_block = "<space>ib",
        send_code_block_and_move = "<space>in",
        send_until_cursor = "<space>iuc",
        send_mark = "<space>im",
        mark_motion = "<space>mc",
        mark_visual = "<space>mc",
        remove_mark = "<space>md",
        cr = "<space>i<cr>",
        interrupt = "<space>i<space>",
        exit = "<space>iq",
        clear = "<space>il",
      },
      -- If the highlight is on, you can change how it looks
      -- For the available options, check nvim_set_hl
      highlight = {
        italic = true,
      },
      ignore_blank_lines = true, -- ignore blank lines when sending visual select lines
    })

    -- iron also has a list of commands, see :h iron-commands for all available commands
    vim.keymap.set("n", "<space>is", "<cmd>IronRepl<cr>")
    vim.keymap.set("n", "<space>ir", "<cmd>IronRestart<cr>")
    vim.keymap.set("n", "<space>iF", "<cmd>IronFocus<cr>")
    vim.keymap.set("n", "<space>ih", "<cmd>IronHide<cr>")
  end,
}
