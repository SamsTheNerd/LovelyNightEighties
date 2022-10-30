local vim = vim

local LN8 = {}

LN8.default = {
	name = 'Lovely Night 80s',
	base0 = '#D9D9D9',
	base1 = '#8574A6',
	base2 = '#47366B',
	base3 = '#312152',
	base4 = '#1E1433',
	base5 = '#120C1F',
	red = '#FF8C8E',
	orange = '#FFAC80',
	yellow = '#FFEA80',
	green = '#8AE599',
	cyan = '#73E5E5',
	blue = '#7399E5',
	pink = '#E391E5',
	highlight = '#493280',
	diff_add = '#3d5213',
	diff_remove = '#4a0f23',
	diff_change = '#27406b',
	diff_text = '#23324d',
}

local function remove_italics(config, colors)
	if not config.italics and colors.style == "italic" then
		colors.style = nil
	end
	return colors
end

local function highlighter(config)
	return function(group, color)
		color = remove_italics(config, color)
		local style = color.style and 'gui=' .. color.style or 'gui=NONE'
		local fg = color.fg and 'guifg = ' .. color.fg or 'guifg = NONE'
		local bg = color.bg and 'guibg = ' .. color.bg or 'guibg = NONE'
		local sp = color.sp and 'guisp = ' .. color.sp or 'guisp = NONE'
		vim.cmd('highlight ' .. group .. ' ' .. style .. ' ' .. fg .. ' ' .. ' ' .. bg .. ' ' .. sp)
	end
end

LN8.load_syntax = function(palette)
	return {
	Normal = {
      fg = palette.base0,
      bg = palette.base5,
    },
    NormalFloat = {
      bg = palette.base1,
    },
    Pmenu = {
      fg = palette.base0,
      bg = palette.base3,
    },
    PmenuSel = {
      fg = palette.base4,
      bg = palette.orange,
    },
    PmenuSelBold = {
      fg = palette.base4,
      bg = palette.orange,
    },
    PmenuThumb = {
      fg = palette.pink,
      bg = palette.blue,
    },
    PmenuSbar = {
      bg = palette.base3,
    },
    Cursor = {
      style = 'reverse',
    },
    ColorColumn = {
      bg = palette.base1,
    },
    CursorLine = {
      bg = palette.base3,
    },
    NonText = { -- used for "eol", "extends" and "precedes" in listchars
      fg = palette.base5,
    },
    Visual = {
      bg = palette.base3,
    },
    VisualNOS = {
      bg = palette.base3,
    },
    Search = {
      fg = palette.base2,
      bg = palette.yellow,
    },
    IncSearch = {
      fg = palette.base2,
      bg = palette.orange,
    },
    CursorLineNr = {
      fg = palette.base0,
      bg = palette.base5,
    },
    MatchParen = {
      fg = palette.pink,
    },
    Question = {
      fg = palette.yellow,
    },
    ModeMsg = {
      fg = palette.base0,
      style = 'bold',
    },
    MoreMsg = {
      fg = palette.base0,
      style = 'bold',
    },
    ErrorMsg = {
      fg = palette.red,
      style = 'bold',
    },
    WarningMsg = {
      fg = palette.yellow,
      style = 'bold',
    },
    VertSplit = {
      fg = palette.red,
    },
    LineNr = {
      fg = palette.base2,
      bg = palette.base5,
    },
    SignColumn = {
      fg = palette.base0,
      bg = palette.base5,
    },
    StatusLine = {
      fg = palette.base3,
      bg = palette.base3,
    },
    StatusLineNC = {
      fg = palette.base1,
      bg = palette.base3,
    },
    Tabline = {},
    TabLineFill = {},
    TabLineSel = {
      bg = palette.base4,
    },
    SpellBad = {
      fg = palette.red,
      style = 'undercurl',
    },
    SpellCap = {
      fg = palette.pink,
      style = 'undercurl',
    },
    SpellRare = {
      fg = palette.cyan,
      style = 'undercurl',
    },
    SpellLocal = {
      fg = palette.pink,
      style = 'undercurl',
    },
    SpecialKey = {
      fg = palette.pink,
    },
    Title = {
      fg = palette.yellow,
      style = 'bold',
    },
    Directory = {
      fg = palette.cyan,
    },
    DiffAdd = {
      bg = palette.red,
    },
    DiffDelete = {
      bg = palette.red,
    },
    DiffChange = {
      bg = palette.red,
    },
    DiffText = {
      bg = palette.red,
    },
    diffAdded = {
      fg = palette.green,
    },
    diffRemoved = {
      fg = palette.pink,
    },
    Folded = {
      fg = palette.base1,
      bg = palette.base3,
    },
    FoldColumn = {
      fg = palette.base0,
      bg = palette.base5,
    },
    Constant = {
      fg = palette.cyan,
    },
    Number = {
      fg = palette.orange,
    },
    Float = {
      fg = palette.orange,
    },
    Boolean = {
      fg = palette.orange,
    },
    Character = {
      fg = palette.green,
    },
    String = {
      fg = palette.green,
    },
    Type = {
      fg = palette.pink,
    },
    Structure = {
      fg = palette.yellow,
    },
    StorageClass = {
      fg = palette.pink,
    },
    Typedef = {
      fg = palette.cyan,
    },
    Identifier = {
      fg = palette.base0,
    },
    Function = {
      fg = palette.blue,
      style = 'italic',
    },
    Statement = {
      fg = palette.pink,
    },
    Operator = {
      fg = palette.cyan,
    },
    Label = {
      fg = palette.pink,
    },
    Keyword = {
      fg = palette.pink,
      style = 'italic',
    },
    PreProc = {
      fg = palette.pink,
    },
    Include = {
      fg = palette.pink,
    },
    Define = {
      fg = palette.pink,
    },
    Macro = {
      fg = palette.pink,
    },
    PreCondit = {
      fg = palette.pink,
    },
    Special = {
      fg = palette.base0,
    },
    SpecialChar = {
      fg = palette.pink,
    },
    Delimiter = {
      fg = palette.base0,
    },
    SpecialComment = {
      fg = palette.base1,
      style = 'italic',
    },
    Tag = {
      fg = palette.orange,
    },
    Todo = {
      fg = palette.orange,
    },
    Comment = {
      fg = palette.base1,
      style = 'italic',
    },
    Underlined = {
      style = 'underline',
    },
    Ignore = {},
    Error = {
      fg = palette.red,
    },
    Terminal = {
      fg = palette.base0,
      bg = palette.base2,
    },
    EndOfBuffer = {
      fg = palette.base5,
    },
    Conceal = {
      fg = palette.base1,
    },
    vCursor = {
      style = 'reverse',
    },
    iCursor = {
      style = 'reverse',
    },
    lCursor = {
      style = 'reverse',
    },
    CursorIM = {
      style = 'reverse',
    },
    CursorColumn = {
      bg = palette.base3,
    },
    Whitespace = { -- used for "nbsp", "space", "tab" and "trail" in listchars
      fg = palette.base5,
    },
    WildMenu = {
      fg = palette.base0,
      bg = palette.orange,
    },
    QuickFixLine = {
      fg = palette.pink,
      style = 'bold',
    },
    Debug = {
      fg = palette.orange,
    },
    debugBreakpoint = {
      fg = palette.base2,
      bg = palette.red,
    },
    Conditional = {
      fg = palette.pink,
    },
    Repeat = {
      fg = palette.pink,
    },
    Exception = {
      fg = palette.pink,
    },
	}
end

LN8.load_plugin_syntax = function(palette)
	return {
	TSString = {
      fg = palette.green,
    },
    TSInclude = {
      fg = palette.pink,
    },
    TSVariable = {
      fg = palette.orange,
    },
    TSVariableBuiltin = {
      fg = palette.orange,
    },
    TSAnnotation = {
      fg = palette.green,
    },
    TSComment = {
      fg = palette.base1,
      style = 'italic',
    },
    TSConstant = {
      fg = palette.cyan,
    },
    TSConstBuiltin = {
      fg = palette.pink,
    },
    TSConstMacro = {
      fg = palette.pink,
    },
    TSConstructor = {
      fg = palette.cyan,
    },
    TSConditional = {
      fg = palette.pink,
    },
    TSCharacter = {
      fg = palette.green,
    },
    TSFunction = {
      fg = palette.blue,
      style = 'italic',
    },
    TSFuncBuiltin = {
      fg = palette.cyan,
    },
    TSFuncMacro = {
      fg = palette.green,
      style = 'italic',
    },
    TSKeyword = {
      fg = palette.pink,
      style = 'italic',
    },
    TSKeywordFunction = {
      fg = palette.pink,
      style = 'italic',
    },
    TSKeywordOperator = {
      fg = palette.pink,
    },
    TSKeywordReturn = {
      fg = palette.pink,
    },
    TSMethod = {
      fg = palette.green,
    },
    TSNamespace = {
      fg = palette.pink,
    },
    TSNumber = {
      fg = palette.pink,
    },
    TSOperator = {
      fg = palette.pink,
    },
    TSParameter = {
      fg = palette.orange,
    },
    TSParameterReference = {
      fg = palette.base0,
    },
    TSProperty = {
      fg = palette.base0,
    },
    TSPunctDelimiter = {
      fg = palette.base0,
    },
    TSPunctBracket = {
      fg = palette.pink,
    },
    TSPunctSpecial = {
      fg = palette.pink,
    },
    TSRepeat = {
      fg = palette.pink,
    },
    TSStringRegex = {
      fg = palette.pink,
    },
    TSStringEscape = {
      fg = palette.pink,
    },
    TSTag = {
      fg = palette.pink,
    },
    TSTagDelimiter = {
      fg = palette.base0,
    },
    TSTagAttribute = {
      fg = palette.green,
    },
    TSLabel = {
      fg = palette.pink,
    },
    TSType = {
      fg = palette.cyan,
    },
    TSException = {
      fg = palette.pink,
    },
    TSField = {
      fg = palette.base0,
    },
    TSFloat = {
      fg = palette.pink,
    },
    dbui_tables = {
      fg = palette.base0,
    },
    DiagnosticSignError = {
      fg = palette.red,
    },
    DiagnosticSignWarn = {
      fg = palette.yellow,
    },
    DiagnosticSignInfo = {
      fg = palette.base0,
    },
    DiagnosticSignHint = {
      fg = palette.cyan,
    },
    DiagnosticVirtualTextError = {
      fg = palette.red,
    },
    DiagnosticVirtualTextWarn = {
      fg = palette.yellow,
    },
    DiagnosticVirtualTextInfo = {
      fg = palette.base0,
    },
    DiagnosticVirtualTextHint = {
      fg = palette.cyan,
    },
    DiagnosticUnderlineError = {
      style = 'undercurl',
      sp = palette.red,
    },
    DiagnosticUnderlineWarn = {
      style = 'undercurl',
      sp = palette.yellow,
    },
    DiagnosticUnderlineInfo = {
      style = 'undercurl',
      sp = palette.base0,
    },
    DiagnosticUnderlineHint = {
      style = 'undercurl',
      sp = palette.cyan,
    },
    CursorWord0 = {
      bg = palette.base0,
      fg = palette.base5,
    },
    CursorWord1 = {
      bg = palette.base0,
      fg = palette.base5,
    },
    NvimTreeFolderName = {
      fg = palette.base0,
    },
    NvimTreeRootFolder = {
      fg = palette.pink,
    },
    NvimTreeSpecialFile = {
      fg = palette.base0,
      style = 'NONE',
    },

    -- Telescope
    TelescopeBorder = {
      fg = palette.base3,
    },
    TelescopeNormal = {
      fg = palette.base0,
      bg = palette.base0,
    },
    TelescopeSelection = {
      fg = palette.base0,
      style = 'bold',
    },
    TelescopeSelectionCaret = {
      fg = palette.green,
    },
    TelescopeMultiSelection = {
      fg = palette.pink,
    },
    TelescopeMatching = {
      fg = palette.cyan,
    },

    -- hrsh7th/nvim-cmp
    CmpDocumentation = { fg = palette.base0, bg = palette.base1 },
    CmpDocumentationBorder = { fg = palette.base0, bg = palette.base1 },

    CmpItemAbbr = { fg = palette.base0 },
    CmpItemAbbrMatch = { fg = palette.cyan },
    CmpItemAbbrMatchFuzzy = { fg = palette.cyan },

    CmpItemKindDefault = { fg = palette.base0 },
    CmpItemMenu = { fg = palette.base1 },

    CmpItemKindKeyword = { fg = palette.pink },
    CmpItemKindVariable = { fg = palette.pink },
    CmpItemKindConstant = { fg = palette.pink },
    CmpItemKindReference = { fg = palette.pink },
    CmpItemKindValue = { fg = palette.pink },

    CmpItemKindFunction = { fg = palette.cyan },
    CmpItemKindMethod = { fg = palette.cyan },
    CmpItemKindConstructor = { fg = palette.cyan },

    CmpItemKindClass = { fg = palette.orange },
    CmpItemKindInterface = { fg = palette.orange },
    CmpItemKindStruct = { fg = palette.orange },
    CmpItemKindEvent = { fg = palette.orange },
    CmpItemKindEnum = { fg = palette.orange },
    CmpItemKindUnit = { fg = palette.orange },

    CmpItemKindModule = { fg = palette.yellow },

    CmpItemKindProperty = { fg = palette.green },
    CmpItemKindField = { fg = palette.green },
    CmpItemKindTypeParameter = { fg = palette.green },
    CmpItemKindEnumMember = { fg = palette.green },
    CmpItemKindOperator = { fg = palette.green },

    -- ray-x/lsp_signature.nvim
    LspSignatureActiveParameter = { fg = palette.orange },
	}
end

local default_config = {
	palette = LN8.default,
	custom_hlgroups = {},
	italics = true,
}

LN8.setup = function(config)
	vim.cmd('hi clear')
	if vim.fn.exists('syntax_on') then
		vim.cmd('syntax reset')
	end
	vim.o.background = 'dark'
	vim.o.termguicolors = true
	config = config or {}
	config = vim.tbl_deep_extend('keep', config, default_config)

	local used_palette = config.palette or LN8.default
	vim.g.colors_name = used_palette.name

	local syntax = LN8.load_syntax(used_palette)
	syntax = vim.tbl_deep_extend('keep', config.custom_hlgroups, syntax)

	local highlight = highlighter(config)

	for group, colors in pairs(syntax) do
		highlight(group, colors)
	end

	local plugin_syntax = LN8.load_plugin_syntax(used_palette)
	plugin_syntax = vim.tbl_deep_extend('keep', config.custom_hlgroups, plugin_syntax)
	for group, colors in pairs(plugin_syntax) do
		highlight(group, colors)
	end
end

return LN8
