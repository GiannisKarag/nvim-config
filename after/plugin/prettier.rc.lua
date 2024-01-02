local status, prettier = pcall(require, 'prettier')
if (not status) then return end

prettier.setup {
  bin = 'prettierd',
  filetypes = {
    'css',
    'javascript',
    'javascriptreact',
    'typescript',
    'typescriptreact',
    'json',
    'scss',
    'less'
  }
  --cli_options = {
  --arrow_parens = "always",
  --bracket_spacing = true,
  --single_quote = false,
  --end_of_line = 'lf',
  --semi = true,
  --tab_width = 2,
  --trailing_comma = 'none'
  --}
}
