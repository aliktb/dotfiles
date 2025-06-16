return {
  "ntpeters/vim-better-whitespace",
  lazy = false,
  init = function()
    vim.api.nvim_create_autocmd("User", {
      pattern = "SnacksDashboardOpened",
      callback = function()
        vim.cmd([[DisableWhitespace]])
      end,
    })
  end,
}
