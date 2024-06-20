local util = require 'lspconfig.util'

return {
  default_config = {
    cmd = { 'koka', '--language-server', '--lsstdio' },
    filetypes = { 'kk' },
    single_file_support = true,
    root_dir = function(fname)
      return util.find_git_ancestor(fname)
    end,
  },

  docs = {
    description = [[
    https://koka-lang.github.io/koka/doc/index.html
Koka is a functional programming language with effect types and handlers.
    ]],
    default_config = {
      root_dir = [[ git directory ]],
      capabilities = [[default capabilities, with offsetEncoding utf-8]],
    },
  },
}
