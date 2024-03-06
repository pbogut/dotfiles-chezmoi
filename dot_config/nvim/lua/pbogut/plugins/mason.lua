---@type LazyPluginSpec[]
return {
  {
    'williamboman/mason.nvim',
    cmd = 'Mason',
    config = true,
  },
  {
    'whoissethdaniel/mason-tool-installer.nvim',
    cmd = { 'MasonToolsInstall', 'MasonToolsUpdate' },
    opts = {
      ensure_installed = {
        'bash-language-server',
        'clang-format',
        'codelldb',
        'css-lsp',
        'deno',
        'dockerfile-language-server',
        'editorconfig-checker',
        'efm',
        'elixir-ls',
        'eslint-lsp',
        'gdtoolkit',
        'golangci-lint',
        'gopls',
        'html-lsp',
        'htmx-lsp',
        'intelephense',
        'isort',
        'jedi-language-server',
        'json-lsp',
        'jsonlint',
        'lemminx',
        'lua-language-server',
        'ocaml-lsp',
        'ocamlformat',
        'openscad-lsp',
        'php-cs-fixer',
        'php-debug-adapter',
        'phpcbf',
        'phpcs',
        'phpmd',
        'prosemd-lsp',
        'psalm',
        'pyright',
        'python-lsp-server',
        'selene',
        'shellcheck',
        'shfmt',
        'solargraph',
        -- 'sqlls',
        'stylua',
        'tailwindcss-language-server',
        'templ',
        'typescript-language-server',
        'vim-language-server',
        'vint',
        'vls',
      },
      auto_update = false,
      run_on_start = false,
      start_delay = 3000, -- 3 second delay
    },
  },
}
