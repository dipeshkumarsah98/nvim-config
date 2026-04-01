return {
  { "nvim-treesitter/playground", cmd = "TSPlaygroundToggle", update = ":TSUpdate" },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "astro",
        "cmake",
        "cpp",
        "css",
        "fish",
        "gitignore",
        "go",
        "graphql",
        "http",
        "java",
        "php",
        "rust",
        "scss",
        "sql",
        "svelte",
      },

      -- matchup = {
      -- 	enable = true,
      -- },

      -- https://github.com/nvim-treesitter/playground#query-linter
      query_linter = {
        enable = true,
        use_virtual_text = true,
        lint_events = { "BufWrite", "CursorHold" },
      },

      playground = {
        enable = true,
        disable = {},
        updatetime = 25, -- Debounced time for highlighting nodes in the playground from source code
        persist_queries = true, -- Whether the query persists across vim sessions
        keybindings = {
          toggle_query_editor = "o",
          toggle_hl_groups = "i",
          toggle_injected_languages = "t",
          toggle_anonymous_nodes = "a",
          toggle_language_display = "I",
          focus_language = "f",
          unfocus_language = "F",
          update = "R",
          goto_node = "<cr>",
          show_help = "?",
        },
      },
    },
    event = { "BufReadPost", "BufNewFile" },
    build = ":TSUpdate",
    -- let lazy.nvim handle setup via opts; this avoids module lookup errors if plugin isn't loaded yet
    -- and ensures the config is applied in the expected LazyVim lifecycle.
    -- note: register mdx after setup via config hook only if treesitter module exists.
    config = function(_, opts)
      local ok = pcall(require, "nvim-treesitter.configs")
      if not ok then
        vim.notify("nvim-treesitter not installed or not yet available", vim.log.levels.WARN)
        return
      end
      require("nvim-treesitter.configs").setup(opts)

      vim.filetype.add({
        extension = {
          mdx = "mdx",
        },
      })
      if vim.treesitter and vim.treesitter.language then
        vim.treesitter.language.register("markdown", "mdx")
      end
    end,
  },
}
