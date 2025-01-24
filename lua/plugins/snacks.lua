return {
  "snacks.nvim",
  opts = {
    dashboard = {
      preset = {
        header = [[
        ██╗      █████╗ ███████╗██╗   ██╗██╗   ██╗██╗███╗   ███╗          Z
        ██║     ██╔══██╗╚══███╔╝╚██╗ ██╔╝██║   ██║██║████╗ ████║      Z
        ██║     ███████║  ███╔╝  ╚████╔╝ ██║   ██║██║██╔████╔██║   z
        ██║     ██╔══██║ ███╔╝    ╚██╔╝  ╚██╗ ██╔╝██║██║╚██╔╝██║ z
        ███████╗██║  ██║███████╗   ██║    ╚████╔╝ ██║██║ ╚═╝ ██║
        ╚══════╝╚═╝  ╚═╝╚══════╝   ╚═╝     ╚═══╝  ╚═╝╚═╝     ╚═╝
 ]],
        -- stylua: ignore
        ---@type snacks.dashboard.Item[]
        keys = {
          {
            icon = " ",
            key = "c",
            desc = "Config",
            action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})",
          },
          { icon = " ", key = "x", desc = "Lazy Extras", action = ":LazyExtras" },
          { icon = "󰒲 ", key = "l", desc = "Lazy", action = ":Lazy" },
          { icon = " ", key = "q", desc = "Quit", action = ":qa" },
        },
        -- footer = function()
        --   local info = {}
        --   local fortune = require("fortune").get_fortune()
        --   info[1] = "  Neovim loaded "
        --     .. vim.fn.strftime("%H:%M")
        --     .. " on "
        --     .. vim.fn.strftime("%d/%m/%Y")
        --     .. " '"
        --   local footer = vim.list_extend(info, fortune)
        --   return footer
        -- end,
      },
      sections = {
        { icon = " ", title = "Recent Files", section = "recent_files", indent = 1, padding = { 1, 1 } },
        { icon = " ", title = "Projects", section = "projects", indent = 1, padding = { 1, 1 } },
        {
          icon = " ",
          title = "Git Status",
          section = "terminal",
          enabled = function()
            return Snacks.git.get_root() ~= nil
          end,
          cmd = "git status --short --branch --renames",
          height = 5,
          padding = 1,
          ttl = 5 * 60,
          indent = 3,
        },
        { icon = "󰘳", title = "Shortcuts", section = "keys", indent = 1, padding = { 1, 1 } },
      },
    },
  },
}
