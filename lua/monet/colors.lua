local M = {}

-- Color palette for Monet theme
M.colors = {
  -- Base colors
  bg0 = "#1b181f",       -- Dark background
  bg1 = "#2e383c",       -- Lighter background
  bg2 = "#374145",       -- Selection background
  bg3 = "#414b50",       -- Comments, line numbers
  bg4 = "#495156",       -- Dark foreground
  bg5 = "#4f5b58",       -- Darker non-text
  bg_visual = "#4a4940", -- Visual selection
  bg_red = "#4c3743",    -- Error background
  bg_green = "#3c4841",  -- Success background
  bg_blue = "#384b55",   -- Info background
  bg_yellow = "#45443c", -- Warning background

  -- Foreground
  fg = "#d3c6aa",      -- Main text
  fg_dim = "#9da9a0",  -- Less prominent text
  fg_dark = "#7f897d", -- Even less prominent text

  -- Neovim specific
  bg_statusline1 = "#2d353b",
  bg_statusline2 = "#343f44",
  bg_statusline3 = "#3a464c",

  -- Syntax colors
  red = "#e67e80",    -- Error, keyword
  orange = "#e69875", -- Number, boolean
  yellow = "#dbbc7f", -- Warning, string
  green = "#a7c080",  -- Success, function
  aqua = "#83c092",   -- Escape character
  blue = "#7fbbb3",   -- Method
  purple = "#d699b6", -- Constant

  -- Syntax neutral
  none = "NONE",

  just = {
    white = "#FFFDFF",
    rosewater = "#f5e0dc",
    flamingo = "#f2cdcd",
    pink = "#f5c2e7",
    mauve = "#cba6f7",
    red = "#e52e71",
    mochared = "#f38ba8",
    maroon = "#eba0ac",
    peach = "#fab387",
    yellow = "#f9e2af",
    green = "#a6e3a1",
    teal = "#94e2d5",
    sky = "#89dceb",
    sapphire = "#74c7ec",
    blue = "#89b4fa",
    lavender = "#b4befe",
    text = "#cdd6f4",
    subtext1 = "#bac2de",
    subtext0 = "#a6adc8",
    overlay2 = "#9399b2",
    overlay1 = "#7f849c",
    overlay0 = "#6c7086",
    surface2 = "#585b70",
    surface1 = "#45475a",
    surface0 = "#313244",
    base = "#1e1e2e",
    mantle = "#2D2636", -- charade
    crust = "#1b181f",  -- mirage
  },
}

return M
