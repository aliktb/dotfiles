return {
  "lewis6991/gitsigns.nvim",
  opts = {
    current_line_blame = true,
    current_line_blame_opts = {
      virt_text = true,
      virt_text_pos = "eol", -- 'eol' | 'overlay' | 'right_align'
      delay = 100,
      ignore_whitespace = false,
      virt_text_priority = 100,
      use_focus = true,
    },
    current_line_blame_formatter = "<author>, <author_time:%R> - <summary>",
  },

  config = function(_, opts)
    require('gitsigns').setup(opts)

    local gs = require('gitsigns')

    local function copy_line_commit_hash()
      local bufnr = vim.api.nvim_get_current_buf()
      local lnum = vim.api.nvim_win_get_cursor(0)[1]

      -- Try gitsigns API first
      local ok, info = pcall(gs.get_blame_info, bufnr, lnum)
      if ok and info and info.commit then
        vim.fn.setreg('+', info.commit)
        vim.notify("Copied commit: " .. info.commit)
        return
      end

      -- Fallback to git blame (works if file is in a git repo)
      local filepath = vim.api.nvim_buf_get_name(bufnr)
      if filepath == "" then
        vim.notify("No file name for buffer", vim.log.levels.WARN)
        return
      end
      local cwd = vim.fn.fnamemodify(filepath, ":h")
      local cmd = string.format(
        "git -C %s blame -L %d,%d --porcelain -- %s",
        vim.fn.shellescape(cwd),
        lnum, lnum,
        vim.fn.shellescape(filepath)
      )
      local handle = io.popen(cmd)
      local out = ""
      if handle then
        out = handle:read("*a") or ""
        handle:close()
      end
      local hash = out:match("^(%w+)")
      if not hash or hash == "" then
        vim.notify("No blame info found", vim.log.levels.WARN)
        return
      end
      vim.fn.setreg('+', hash)
      vim.notify("Copied commit: " .. hash)
    end

    vim.keymap.set('n', '<leader>ch', copy_line_commit_hash, { desc = "Copy commit hash for current line" })
  end,
}
