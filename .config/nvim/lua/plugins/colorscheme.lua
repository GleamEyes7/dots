-- return {
--   {
--     "rose-pine/neovim",
--     name = "rose-pine",
--     opts = {
--       variant = "main",
--     },
--     lazy = false,
--   },
--
--   {
--     "catppuccin/nvim",
--     name = "catppuccin",
--     opts = {
--       flavour = "mocha", -- latte, frappe, macchiato, mocha
--     },
--     lazy = false,
--   },
--
--   {
--     "folke/tokyonight.nvim",
--     name = "tokyonight",
--     opts = {
--       style = "night", -- storm, moon, night, day
--     },
--     lazy = false,
--   },
--
--   {
--     "Mofiqul/dracula.nvim",
--     name = "dracula",
--     lazy = false,
--   },
--
--   {
--     "ellisonleao/gruvbox.nvim",
--     name = "gruvbox",
--     opts = {
--       contrast = "hard", -- soft, medium, hard
--     },
--     lazy = false,
--   },
--
--   {
--     "shaunsingh/nord.nvim",
--     name = "nord",
--     lazy = false,
--   },
--
--   {
--     "navarasu/onedark.nvim",
--     name = "onedark",
--     opts = {
--       style = "dark", -- dark, darker, cool, deep, warm, warmer
--     },
--     lazy = false,
--   },
--
--   {
--     "LazyVim/LazyVim",
--     opts = {
--       colorscheme = "dracula", -- change this to switch theme
--     },
--   },
-- }
return {
  {
    "rose-pine/neovim",
    name = "rose-pine",
    opts = {
      variant = "main",
      styles = {
        transparency = true, -- Enables rose-pine transparency
      },
    },
    lazy = false,
  },

  {
    "catppuccin/nvim",
    name = "catppuccin",
    opts = {
      flavour = "mocha", -- latte, frappe, macchiato, mocha
      transparent_background = true, -- Enables catppuccin transparency
    },
    lazy = false,
  },

  {
    "folke/tokyonight.nvim",
    name = "tokyonight",
    opts = {
      style = "night", -- storm, moon, night, day
      transparent = true, -- Enables tokyonight transparency
    },
    lazy = false,
  },

  {
    "Mofiqul/dracula.nvim",
    name = "dracula",
    opts = {
      transparent_bg = true, -- Enables dracula transparency
    },
    lazy = false,
  },

  {
    "ellisonleao/gruvbox.nvim",
    name = "gruvbox",
    opts = {
      contrast = "hard", -- soft, medium, hard
      transparent_mode = true, -- Enables gruvbox transparency
    },
    lazy = false,
  },

  {
    "navarasu/onedark.nvim",
    name = "onedark",
    opts = {
      style = "dark", -- dark, darker, cool, deep, warm, warmer
      transparent = true, -- Enables onedark transparency
    },
    lazy = false,
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "dracula", -- change this to switch theme
    },
  },
}
