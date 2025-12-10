return {
  "mfussenegger/nvim-lint",
  optional = true,
  opts = {
    linters = {
      sqlfluff = {
        args = { "lint", "--format=json", "--dialect=postgres" },
      },
    },
  },
}
