local parsers = require("nvim-treesitter.parsers")
local installer = require("nvim-treesitter.install")

local M = {}

function M.init()
  parsers.get_parser_configs().ng = {
    install_info = {
      url = "justinrassier/tree-sitter-ng",
      -- url = "~/git/tree-sitter-ng",
      files = { "src/parser.c", "src/scanner.cc" },
      branch = "main",
      -- requires_generate_from_grammar = false, -- if folder contains pre-generated src/parser.c
    },
    filetype = "ng",
    maintainers = { "justinrassier" },
  }

  if not parsers.has_parser("ng") then
    installer.update("ng")
  end
end

return M
