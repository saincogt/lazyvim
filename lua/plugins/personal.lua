return {
  {
    -- escape in insert mode with jk or jj
    "max397574/better-escape.nvim",
    config = function()
      require("better_escape").setup()
    end,
  },
  {
    -- get notified if accidentally pressed recording
    "folke/noice.nvim",
    opts = {},
    config = function(_, opts)
      require("noice").setup(opts)

      vim.api.nvim_create_autocmd("RecordingEnter", {
        pattern = "*",
        callback = function()
          local reg = vim.fn.reg_recording()
          local msg = "🔴 Recording @" .. reg
          vim.notify(msg, vim.log.levels.INFO, {
            title = "Macro Recording",
            timeout = 3000,
          })
        end,
      })

      vim.api.nvim_create_autocmd("RecordingLeave", {
        pattern = "*",
        callback = function()
          vim.notify("Macro recording stopped.", vim.log.levels.INFO, {
            title = "Macro Recording",
            timeout = 1000,
          })
        end,
      })
    end,
  },
  {
    -- vim be good games
    "ThePrimeagen/vim-be-good",
  },
  {
    "xiyaowong/transparent.nvim",
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      inlay_hints = { enabled = false },
    },
  },
}
