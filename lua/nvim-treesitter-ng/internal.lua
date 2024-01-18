local parsers = require("nvim-treesitter.parsers")
local installer = require("nvim-treesitter.install")

local M = {}

function M.init()
  parsers.get_parser_configs().ng = {
    install_info = {
      url = "https://github.com/justinrassier/nvim-treesitter-ng",
      files = { "src/parser.c" },
      branch = "main",
    },
    maintainers = { "justinrassier" },
  }

  if not parsers.has_parser("ng") then
    installer.update("ng")
  end
end

return M
