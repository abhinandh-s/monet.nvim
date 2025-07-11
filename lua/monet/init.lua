local monet = {}

local colors = require('monet.colors').colors

-- Function to highlight a group
local highlight = vim.api.nvim_set_hl

-- Apply colors to highlight groups
function monet.setup()
  -- Set colorscheme name
  vim.g.colors_name = 'monet'

  -- Editor highlighting groups
  local editor_syntax = {
    -- Editor
    Normal = { fg = colors.just.subtext0, bg = colors.bg0 },
    NormalFloat = { fg = colors.fg, bg = colors.bg1 },
    NormalNC = { fg = colors.fg, bg = colors.bg0 },

    -- Cursor
    Cursor = { fg = colors.bg0, bg = colors.fg },
    CursorLine = { bg = colors.just.mantle },
    CursorColumn = { bg = colors.just.teal },
    CursorLineNr = { fg = colors.yellow, bold = true },

    -- Line numbers and signs
    LineNr = { fg = colors.bg3 },
    SignColumn = { fg = colors.fg, bg = colors.bg0 },

    -- Status and tab lines
    StatusLine = { fg = colors.fg, bg = colors.bg_statusline1 },
    StatusLineNC = { fg = colors.fg_dim, bg = colors.bg_statusline1 },
    TabLine = { fg = colors.fg, bg = colors.bg_statusline2 },
    TabLineFill = { fg = colors.fg, bg = colors.bg_statusline1 },
    TabLineSel = { fg = colors.bg0, bg = colors.green },

    -- Search and visual
    Search = { fg = colors.bg0, bg = colors.yellow },
    IncSearch = { fg = colors.bg0, bg = colors.orange },
    Visual = { bg = colors.bg_visual },
    VisualNOS = { bg = colors.bg_visual },

    -- Folds and special text
    Folded = { fg = colors.fg_dim, bg = colors.bg1 },
    FoldColumn = { fg = colors.fg_dim, bg = colors.bg0 },
    NonText = { fg = colors.bg4 },
    SpecialKey = { fg = colors.bg4 },

    -- Messages
    ErrorMsg = { fg = colors.red, bold = true },
    WarningMsg = { fg = colors.yellow, bold = true },
    MoreMsg = { fg = colors.green, bold = true },
    Question = { fg = colors.green, bold = true },

    -- Popups
    Pmenu = { fg = colors.fg, bg = colors.bg2 },
    PmenuSel = { fg = colors.bg0, bg = colors.green },
    PmenuSbar = { bg = colors.bg2 },
    PmenuThumb = { bg = colors.bg4 },

    -- Splits and boundaries
    VertSplit = { fg = colors.bg4 },
    WildMenu = { fg = colors.bg0, bg = colors.green },

    -- Diff
    DiffAdd = { bg = colors.bg_green },
    DiffChange = { bg = colors.bg_blue },
    DiffDelete = { bg = colors.bg_red },
    DiffText = { bg = colors.bg_yellow },

    -- Spelling
    SpellBad = { undercurl = true, sp = colors.red },
    SpellCap = { undercurl = true, sp = colors.blue },
    SpellRare = { undercurl = true, sp = colors.purple },
    SpellLocal = { undercurl = true, sp = colors.aqua },
  }

  -- Syntax highlighting groups
  local syntax_groups = {
    -- Basic syntax
    Comment = { fg = colors.bg3, italic = true },
    String = { fg = colors.yellow },
    Character = { fg = colors.yellow },
    Number = { fg = colors.orange },
    Boolean = { fg = colors.orange },
    Float = { fg = colors.orange },

    -- Identifiers
    Identifier = { fg = colors.blue },
    Function = { fg = colors.green },

    -- Statements
    Statement = { fg = colors.red },
    Conditional = { fg = colors.red },
    Repeat = { fg = colors.red },
    Label = { fg = colors.red },
    Operator = { fg = colors.orange },
    Keyword = { fg = colors.red },
    Exception = { fg = colors.red },

    -- Preprocessor
    PreProc = { fg = colors.purple },
    Include = { fg = colors.purple },
    Define = { fg = colors.purple },
    Macro = { fg = colors.purple },
    PreCondit = { fg = colors.purple },

    -- Types
    Type = { fg = colors.yellow },
    StorageClass = { fg = colors.orange },
    Structure = { fg = colors.orange },
    Typedef = { fg = colors.orange },

    -- Special
    Special = { fg = colors.aqua },
    SpecialChar = { fg = colors.aqua },
    Tag = { fg = colors.aqua },
    Delimiter = { fg = colors.fg },
    SpecialComment = { fg = colors.aqua },
    Debug = { fg = colors.aqua },

    -- Misc
    Underlined = { underline = true },
    Ignore = { fg = colors.none },
    Error = { fg = colors.red, bold = true },
    Todo = { fg = colors.yellow, bold = true, italic = true },

    -- Neorg
    ["@neorg.headings.1.prefix"] = { fg = colors.just.red, bold = true },
    ["@neorg.headings.2.prefix"] = { fg = colors.just.red, bold = true },
    ["@neorg.headings.3.prefix"] = { fg = colors.just.red, bold = true },
    ["@neorg.headings.4.prefix"] = { fg = colors.just.red, bold = true },
    ["@neorg.headings.5.prefix"] = { fg = colors.just.red, bold = true },
    ["@neorg.headings.6.prefix"] = { fg = colors.just.red, bold = true },
    ["@neorg.headings.1.title"] =  { fg = colors.just.red, bold = true },
    ["@neorg.headings.2.title"] =  { fg = colors.just.red, bold = true },
    ["@neorg.headings.3.title"] =  { fg = colors.just.red, bold = true },
    ["@neorg.headings.4.title"] =  { fg = colors.just.red, bold = true },
    ["@neorg.headings.5.title"] =  { fg = colors.just.red, bold = true },
    ["@neorg.headings.6.title"] =  { fg = colors.just.red, bold = true },
    ["@neorg.quotes.1.prefix"] =  { fg = colors.just.yellow, bold = true },
    ["@neorg.quotes.2.prefix"] =  { fg = colors.just.yellow, bold = true },
    ["@neorg.quotes.3.prefix"] =  { fg = colors.just.yellow, bold = true },
    ["@neorg.quotes.4.prefix"] =  { fg = colors.just.yellow, bold = true },
    ["@neorg.quotes.5.prefix"] =  { fg = colors.just.yellow, bold = true },
    ["@neorg.quotes.6.prefix"] =  { fg = colors.just.yellow, bold = true },
    ["@neorg.quotes.1.content"] =  { fg = colors.just.subtext0 },
    ["@neorg.tags.ranged_verbatim.document_meta.title"] =  { fg = colors.just.mochared },
  }

  -- Apply editor and syntax highlights
  for group, styles in pairs(editor_syntax) do
    highlight(0, group, styles)
  end

  for group, styles in pairs(syntax_groups) do
    highlight(0, group, styles)
  end

  -- LSP highlighting
  highlight(0, "DiagnosticError", { fg = colors.red })
  highlight(0, "DiagnosticWarn", { fg = colors.yellow })
  highlight(0, "DiagnosticInfo", { fg = colors.blue })
  highlight(0, "DiagnosticHint", { fg = colors.aqua })

  highlight(0, "DiagnosticUnderlineError", { undercurl = true, sp = colors.red })
  highlight(0, "DiagnosticUnderlineWarn", { undercurl = true, sp = colors.yellow })
  highlight(0, "DiagnosticUnderlineInfo", { undercurl = true, sp = colors.blue })
  highlight(0, "DiagnosticUnderlineHint", { undercurl = true, sp = colors.aqua })

  -- Link some common plugin groups (add more based on your plugins)
  local links = {
    -- Treesitter
    ["@function"] = "Function",
    ["@method"] = "Function",
    ["@keyword"] = "Keyword",
    ["@string"] = "String",
    ["@variable"] = "Identifier",
    ["@parameter"] = "Identifier",
    ["@field"] = "Identifier",
    ["@property"] = "Identifier",
    ["@constructor"] = "Special",
    ["@comment"] = "Comment",
  }

  -- Apply links
  for from, to in pairs(links) do
    vim.cmd(string.format("highlight! link %s %s", from, to))
  end
end

return monet
