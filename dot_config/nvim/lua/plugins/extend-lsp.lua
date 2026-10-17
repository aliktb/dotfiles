return {
  "mason-org/mason.nvim",
  opts = {
    ensure_installed = {
      "jdtls",
      "lemminx",
    },
  },
  -- LazyVim and mason-lspconfig can request the same server during startup.
  config = function(_, opts)
    require("mason").setup(opts)
    local registry = require("mason-registry")
    registry:on("package:install:success", function()
      vim.defer_fn(function()
        require("lazy.core.handler.event").trigger({
          event = "FileType",
          buf = vim.api.nvim_get_current_buf(),
        })
      end, 100)
    end)

    registry.refresh(function()
      for _, tool in ipairs(opts.ensure_installed) do
        local package = registry.get_package(tool)
        if not package:is_installed() and not package:is_installing() then
          package:install()
        end
      end
    end)
  end,
}
