" Dark Vim/Neovim color scheme.
"
" URL:     github.com/bluz71/vim-nightfly-colors
" License: MIT (https://opensource.org/licenses/MIT)

" Clear highlights and reset syntax.
highlight clear
if exists('syntax_on')
    syntax reset
endif
let g:colors_name='nightfly'

" By default do not color the cursor.
let g:nightflyCursorColor = get(g:, 'nightflyCursorColor', v:false)

" By default do use italics in GUI versions of Vim.
let g:nightflyItalics = get(g:, 'nightflyItalics', v:true)

" By default do not use a customized 'NormalFloat' highlight group (for Neovim
" floating windows).
let g:nightflyNormalFloat = get(g:, 'nightflyNormalFloat', v:false)

" By default use the nightly color palette in the `:terminal`
let g:nightflyTerminalColors = get(g:, 'nightflyTerminalColors', v:true)

" By default do not use a transparent background in GUI versions of Vim.
let g:nightflyTransparent = get(g:, 'nightflyTransparent', v:false)

" By default do use undercurls in GUI versions of Vim, including terminal Vim
" with termguicolors set.
let g:nightflyUndercurls = get(g:, 'nightflyUndercurls', v:true)

" By default do not underline matching parentheses.
let g:nightflyUnderlineMatchParen = get(g:, 'nightflyUnderlineMatchParen', v:false)

" By default do display vertical split columns.
let g:nightflyWinSeparator = get(g:, 'nightflyWinSeparator', 1)

" Background and foreground
let s:black       = '#011627'
let s:white       = '#c3ccdc'
" Variations of blue-grey
let s:black_blue  = '#081e2f'
let s:dark_blue   = '#092236'
let s:deep_blue   = '#0e293f'
let s:slate_blue  = '#2c3043'
let s:pickle_blue = '#38507a'
let s:regal_blue  = '#1d3b53'
let s:steel_blue  = '#4b6479'
let s:grey_blue   = '#7c8f8f'
let s:cadet_blue  = '#a1aab8'
let s:ash_blue    = '#acb4c2'
let s:white_blue  = '#d6deeb'
" Core theme colors
let s:yellow      = '#e3d18a'
let s:peach       = '#ffcb8b'
let s:tan         = '#ecc48d'
let s:orange      = '#f78c6c'
let s:orchid      = '#e39aa6'
let s:red         = '#fc514e'
let s:watermelon  = '#ff5874'
let s:violet      = '#c792ea'
let s:purple      = '#ae81ff'
let s:indigo      = '#5e97ec'
let s:blue        = '#82aaff'
let s:turquoise   = '#7fdbca'
let s:emerald     = '#21c7a8'
let s:green       = '#a1cd5e'
" Extra colors
let s:cyan_blue   = '#296596'

" Specify the colors used by the inbuilt terminal of Neovim and Vim
if g:nightflyTerminalColors
    if has('nvim')
        let g:terminal_color_0  = s:regal_blue
        let g:terminal_color_1  = s:red
        let g:terminal_color_2  = s:green
        let g:terminal_color_3  = s:yellow
        let g:terminal_color_4  = s:blue
        let g:terminal_color_5  = s:violet
        let g:terminal_color_6  = s:turquoise
        let g:terminal_color_7  = s:white
        let g:terminal_color_8  = s:grey_blue
        let g:terminal_color_9  = s:watermelon
        let g:terminal_color_10 = s:emerald
        let g:terminal_color_11 = s:tan
        let g:terminal_color_12 = s:blue
        let g:terminal_color_13 = s:purple
        let g:terminal_color_14 = s:turquoise
        let g:terminal_color_15 = s:white_blue
    else
        let g:terminal_ansi_colors = [
                    \ s:regal_blue, s:red, s:green, s:yellow,
                    \ s:blue, s:violet, s:turquoise, s:white,
                    \ s:grey_blue, s:watermelon, s:emerald, s:tan,
                    \ s:blue, s:purple, s:turquoise, s:white_blue
                    \]
    endif
endif

" Background and text
if g:nightflyTransparent
    exec 'highlight Normal guibg=NONE' . ' guifg=' . s:white
else
    exec 'highlight Normal guibg=' . s:black . ' guifg=' . s:white
endif

" Custom nightfly highlight groups
exec 'highlight NightflyReset guifg=fg'
exec 'highlight NightflyVisual guibg=' . s:regal_blue
exec 'highlight NightflyWhite guifg=' . s:white
exec 'highlight NightflyDeepBlue guifg=' . s:deep_blue
exec 'highlight NightflyPickleBlue guifg=' . s:pickle_blue
exec 'highlight NightflySlateBlue guifg=' . s:slate_blue
exec 'highlight NightflyRegalBlue guifg=' . s:regal_blue
exec 'highlight NightflySteelBlue guifg=' . s:steel_blue
exec 'highlight NightflyGreyBlue guifg=' . s:grey_blue
exec 'highlight NightflyCadetBlue guifg=' . s:cadet_blue
exec 'highlight NightflyAshBlue guifg=' . s:ash_blue
exec 'highlight NightflyWhiteBlue guifg=' . s:white_blue
exec 'highlight NightflyYellow guifg=' . s:yellow
exec 'highlight NightflyPeach guifg=' . s:peach
exec 'highlight NightflyTan guifg=' . s:tan
exec 'highlight NightflyOrchid guifg=' . s:orchid
exec 'highlight NightflyOrange guifg=' . s:orange
exec 'highlight NightflyRed guifg=' . s:red
exec 'highlight NightflyWatermelon guifg=' . s:watermelon
exec 'highlight NightflyViolet guifg=' . s:violet
exec 'highlight NightflyPurple guifg=' . s:purple
exec 'highlight NightflyBlue guifg=' . s:blue
exec 'highlight NightflyIndigo guifg=' . s:indigo
exec 'highlight NightflyTurquoise guifg=' . s:turquoise
exec 'highlight NightflyEmerald guifg=' . s:emerald
exec 'highlight NightflyGreen guifg=' . s:green
exec 'highlight NightflyWhiteAlert guibg=bg guifg=' . s:white . ' gui=bold'
exec 'highlight NightflyCadetBlueAlert guibg=bg guifg=' . s:cadet_blue . ' gui=bold'
exec 'highlight NightflyYellowAlert guibg=bg guifg=' . s:yellow . ' gui=bold'
exec 'highlight NightflyOrangeAlert guibg=bg guifg=' . s:orange . ' gui=bold'
exec 'highlight NightflyRedAlert guibg=bg guifg=' . s:red . ' gui=bold'
exec 'highlight NightflyPurpleAlert guibg=bg guifg=' . s:purple . ' gui=bold'
exec 'highlight NightflyBlueAlert guibg=bg guifg=' . s:blue . ' gui=bold'
exec 'highlight NightflyEmeraldAlert guibg=bg guifg=' . s:emerald . ' gui=bold'
exec 'highlight NightflyUnderline gui=underline'
exec 'highlight NightflyNoCombine gui=nocombine'
" Statusline helper colors
exec 'highlight NightflyBlueMode guibg=' . s:blue . ' guifg=' . s:dark_blue
exec 'highlight NightflyEmeraldMode guibg=' . s:emerald . ' guifg=' . s:dark_blue
exec 'highlight NightflyPurpleMode guibg=' . s:purple . ' guifg=' . s:dark_blue
exec 'highlight NightflyWatermelonMode guibg=' . s:watermelon . ' guifg=' . s:dark_blue
exec 'highlight NightflyTanMode guibg=' . s:tan . ' guifg=' . s:dark_blue
exec 'highlight NightflyTurquoiseMode guibg=' . s:turquoise . ' guifg=' . s:dark_blue
" Generic line helper colors
exec 'highlight NightflyBlueLine guibg=' . s:slate_blue . ' guifg=' . s:blue
exec 'highlight NightflyEmeraldLine guibg=' . s:slate_blue . ' guifg=' . s:emerald
exec 'highlight NightflyGreyBlueLine guibg=' . s:dark_blue . '  guifg=' . s:grey_blue
exec 'highlight NightflyTanLine guibg=' . s:dark_blue . '  guifg=' . s:tan
exec 'highlight NightflyTanLineActive guibg=' . s:regal_blue . '  guifg=' . s:tan
exec 'highlight NightflyWhiteLineActive guibg=' . s:regal_blue . '  guifg=' . s:white_blue
exec 'highlight NightflyWatermelonLine guibg=' . s:slate_blue . ' guifg=' . s:watermelon
" Diagnostic helper colors
exec 'highlight NightflyDiagnosticUndercurlError gui=undercurl guisp=' . s:red
exec 'highlight NightflyDiagnosticUndercurlWarn gui=undercurl guisp=' . s:yellow
exec 'highlight NightflyDiagnosticUndercurlInfo gui=undercurl guisp=' . s:blue
exec 'highlight NightflyDiagnosticUndercurlHint gui=undercurl guisp=' . s:white
exec 'highlight NightflyDiagnosticUnderlineError gui=underline guisp=' . s:red
exec 'highlight NightflyDiagnosticUnderlineWarn gui=underline guisp=' . s:yellow
exec 'highlight NightflyDiagnosticUnderlineInfo gui=underline guisp=' . s:blue
exec 'highlight NightflyDiagnosticUnderlineHint gui=underline guisp=' . s:emerald

"-----------------------------------------------------------------------
" Core styling
"-----------------------------------------------------------------------

" Color of mode text, -- INSERT --
exec 'highlight ModeMsg guifg=' . s:cadet_blue . ' gui=none'

" Comments
if g:nightflyItalics
    exec 'highlight Comment guifg=' . s:grey_blue . ' gui=italic'
else
    exec 'highlight Comment guifg=' . s:grey_blue
endif

" Functions
highlight! link Function NightflyBlue

" Strings
highlight! link String NightflyTan

" Booleans
highlight! link Boolean NightflyWatermelon

" Identifiers
highlight! link Identifier NightflyTurquoise

" Color of titles
exec 'highlight Title guifg=' . s:orange . ' gui=none'

" const, static
highlight! link StorageClass NightflyOrange

" void, intptr_t
exec 'highlight Type guifg=' . s:emerald . ' gui=none'

" Numbers
highlight! link Constant NightflyOrange

" Character constants
highlight! link Character NightflyPurple

" Exceptions
highlight! link Exception NightflyWatermelon

" ifdef/endif
highlight! link PreProc NightflyWatermelon

" case in switch statement
highlight! link Label NightflyTurquoise

" end-of-line '$', end-of-file '~'
exec 'highlight NonText guifg=' . s:steel_blue . ' gui=none'

" sizeof
highlight! link Operator NightflyWatermelon

" for, while
highlight! link Repeat NightflyViolet

" Search
exec 'highlight Search cterm=none guibg=' . s:steel_blue . ' guifg=' . s:white_blue . ' gui=none'
exec 'highlight CurSearch cterm=none guibg=' . s:orange . ' guifg=bg gui=none'
exec 'highlight IncSearch cterm=none guibg=' . s:peach . ' guifg=bg gui=none'

" '\n' sequences
highlight! link Special NightflyWatermelon

" if, else
exec 'highlight Statement guifg=' . s:violet . ' gui=none'

" struct, union, enum, typedef
highlight! link Structure NightflyIndigo

" Statusline, splits and tab lines
exec 'highlight StatusLineNC cterm=none guibg=' . s:slate_blue . ' guifg=' . s:cadet_blue . ' gui=none'
exec 'highlight Tabline cterm=none guibg=' . s:slate_blue . ' guifg=' . s:cadet_blue . ' gui=none'
exec 'highlight TablineSel cterm=none guibg=' . s:dark_blue . ' guifg=' . s:blue . ' gui=none'
exec 'highlight TablineSelSymbol cterm=none guibg=' . s:dark_blue . ' guifg=' . s:emerald . ' gui=none'
exec 'highlight TablineFill cterm=none guibg=' . s:slate_blue . ' guifg=' . s:slate_blue . ' gui=none'
exec 'highlight StatusLineTerm cterm=none guibg=' . s:slate_blue . ' guifg=' . s:white . ' gui=none'
exec 'highlight StatusLineTermNC cterm=none guibg=' . s:slate_blue . ' guifg=' . s:cadet_blue . ' gui=none'
if g:nightflyWinSeparator == 0
    exec 'highlight VertSplit cterm=none guibg=' . s:black . ' guifg=' . s:black . ' gui=none'
elseif g:nightflyWinSeparator == 1
    exec 'highlight VertSplit cterm=none guibg=' . s:slate_blue . ' guifg=' . s:slate_blue . ' gui=none'
else
    exec 'highlight VertSplit guibg=NONE guifg=' . s:slate_blue . ' gui=none'
end

" Visual selection
highlight! link Visual NightflyVisual
exec 'highlight VisualNOS guibg=' . s:regal_blue . ' guifg=fg gui=none'
exec 'highlight VisualInDiff guibg=' . s:regal_blue . ' guifg=' . s:white

" Errors, warnings and whitespace-eol
exec 'highlight Error guibg=bg guifg=' . s:red
exec 'highlight ErrorMsg guibg=bg guifg=' . s:red
exec 'highlight WarningMsg guibg=bg guifg=' . s:orange

" Auto-text-completion menu
exec 'highlight Pmenu guibg=' . s:deep_blue . ' guifg=fg'
exec 'highlight PmenuSel guibg=' . s:cyan_blue . ' guifg=' . s:white_blue
exec 'highlight PmenuSbar guibg=' . s:deep_blue
exec 'highlight PmenuThumb guibg=' . s:steel_blue
exec 'highlight WildMenu guibg=' . s:cyan_blue . ' guifg=' . s:white_blue

" Spelling errors
if g:nightflyUndercurls
    exec 'highlight SpellBad ctermbg=NONE cterm=underline guibg=NONE gui=undercurl guisp=' . s:red
    exec 'highlight SpellCap ctermbg=NONE cterm=underline guibg=NONE gui=undercurl guisp=' . s:blue
    exec 'highlight SpellRare ctermbg=NONE cterm=underline guibg=NONE gui=undercurl guisp=' . s:yellow
    exec 'highlight SpellLocal ctermbg=NONE cterm=underline guibg=NONE gui=undercurl guisp=' . s:blue
else
    exec 'highlight SpellBad ctermbg=NONE cterm=underline guibg=NONE guifg=' . s:red . ' gui=underline guisp=' . s:red
    exec 'highlight SpellCap ctermbg=NONE cterm=underline guibg=NONE guifg=' . s:blue . ' gui=underline guisp=' . s:blue
    exec 'highlight SpellRare ctermbg=NONE cterm=underline guibg=NONE guifg=' . s:yellow . ' gui=underline guisp=' . s:yellow
    exec 'highlight SpellLocal ctermbg=NONE cterm=underline guibg=NONE guifg=' . s:blue . ' gui=underline guisp=' . s:blue
endif

" Misc
exec 'highlight Question guifg=' . s:green . ' gui=none'
exec 'highlight MoreMsg guifg=' . s:red . ' gui=none'
exec 'highlight LineNr guibg=bg guifg=' . s:steel_blue . ' gui=none'
if g:nightflyCursorColor
    exec 'highlight Cursor guifg=bg guibg=' . s:blue
else
    exec 'highlight Cursor guifg=bg guibg=' . s:cadet_blue
endif
exec 'highlight lCursor guifg=bg guibg=' . s:cadet_blue
exec 'highlight CursorLineNr cterm=none guibg=' . s:dark_blue . ' guifg=' . s:blue . ' gui=none'
exec 'highlight CursorColumn guibg=' . s:dark_blue
exec 'highlight CursorLine cterm=none guibg=' . s:dark_blue
exec 'highlight Folded guibg=' . s:dark_blue . ' guifg='. s:green
exec 'highlight FoldColumn guibg=' . s:slate_blue . ' guifg=' . s:green
exec 'highlight SignColumn guibg=bg guifg=' . s:green
exec 'highlight Todo guibg=' . s:deep_blue . ' guifg=' . s:yellow
exec 'highlight SpecialKey guibg=bg guifg=' . s:blue
if g:nightflyUnderlineMatchParen
    exec 'highlight MatchParen guibg=' . s:steel_blue . ' gui=underline'
else
    highlight! link MatchParen NightflyVisual
endif
exec 'highlight Ignore guifg=' . s:blue
exec 'highlight Underlined guifg=' . s:green . ' gui=none'
exec 'highlight QuickFixLine guibg=' . s:deep_blue
highlight! link Delimiter NightflyWhite
highlight! link qfFileName NightflyEmerald

" Color column (after line 80)
exec 'highlight ColorColumn guibg=' . s:black_blue

" Conceal color
exec 'highlight Conceal guibg=NONE guifg=' . s:ash_blue

" vimdiff/nvim -d
exec 'highlight DiffAdd guibg=' . s:emerald . ' guifg=' . s:black
exec 'highlight DiffChange guibg=' . s:slate_blue
exec 'highlight DiffDelete guibg=' . s:slate_blue . ' guifg=' . s:steel_blue ' gui=none'
exec 'highlight DiffText guibg=' . s:blue . ' guifg=' . s:black . ' gui=none'

" Neovim-only core highlight groups
if has('nvim-0.8')
    lua require("nightfly").core()
elseif has('nvim-0.7')
    exec 'highlight Whitespace guifg=' . s:regal_blue
    exec 'highlight TermCursor guibg=' . s:cadet_blue . ' guifg=bg gui=none'
    if g:nightflyNormalFloat
        exec 'highlight NormalFloat guibg=bg guifg=' . s:cadet_blue
    else
        exec 'highlight NormalFloat guibg=' . s:dark_blue . ' guifg=fg'
    endif
    exec 'highlight FloatBorder guibg=bg guifg=' . s:slate_blue
    highlight! link WinSeparator VertSplit

    " Neovim Treesitter
    highlight! link TSAnnotation NightflyViolet
    highlight! link TSAttribute NightflyBlue
    highlight! link TSConstant NightflyTurquoise
    highlight! link TSConstBuiltin NightflyGreen
    highlight! link TSConstMacro NightflyViolet
    highlight! link TSConstructor NightflyEmerald
    highlight! link TSDanger Todo
    highlight! link TSFuncBuiltin NightflyBlue
    highlight! link TSFuncMacro NightflyBlue
    highlight! link TSInclude NightflyWatermelon
    highlight! link TSKeywordOperator NightflyViolet
    highlight! link TSNamespace NightflyTurquoise
    highlight! link TSParameter NightflyWhite
    highlight! link TSPunctSpecial NightflyWatermelon
    highlight! link TSSymbol NightflyPurple
    highlight! link TSTag NightflyBlue
    highlight! link TSTagDelimiter NightflyGreen
    highlight! link TSVariableBuiltin NightflyGreen
    " Language specific overrides.
    highlight! link bashTSParameter NightflyTurquoise
    highlight! link cssTSPunctDelimiter NightflyWatermelon
    highlight! link cssTSType NightflyBlue
    highlight! link scssTSPunctDelimiter NightflyWatermelon
    highlight! link scssTSType NightflyBlue
    highlight! link scssTSVariable NightflyTurquoise
    highlight! link vimTSVariable NightflyTurquoise
    highlight! link vimTSVariableBuiltin NightflyEmerald
    highlight! link yamlTSField NightflyBlue
    highlight! link yamlTSPunctDelimiter NightflyWatermelon

    " Neovim Diagnostic
    highlight! link DiagnosticError NightflyRed
    highlight! link DiagnosticWarn NightflyYellow
    highlight! link DiagnosticInfo NightflyBlue
    highlight! link DiagnosticHint NightflyWhite
    if g:nightflyUndercurls
        highlight! link DiagnosticUnderlineError NightflyDiagnosticUndercurlError
        highlight! link DiagnosticUnderlineWarn NightflyDiagnosticUndercurlWarn
        highlight! link DiagnosticUnderlineInfo NightflyDiagnosticUndercurlInfo
        highlight! link DiagnosticUnderlineHint NightflyDiagnosticUndercurlHint
    else
        highlight! link DiagnosticUnderlineError NightflyDiagnosticUnderlineError
        highlight! link DiagnosticUnderlineWarn NightflyDiagnosticUnderlineWarn
        highlight! link DiagnosticUnderlineInfo NightflyDiagnosticUnderlineInfo
        highlight! link DiagnosticUnderlineHint NightflyDiagnosticUnderlineHint
    endif
    highlight! link DiagnosticVirtualTextError NightflySteelBlue
    highlight! link DiagnosticVirtualTextWarn NightflySteelBlue
    highlight! link DiagnosticVirtualTextInfo NightflySteelBlue
    highlight! link DiagnosticVirtualTextHint NightflySteelBlue
    highlight! link DiagnosticSignError NightflyRedAlert
    highlight! link DiagnosticSignWarn NightflyYellowAlert
    highlight! link DiagnosticSignInfo NightflyBlueAlert
    highlight! link DiagnosticSignHint NightflyWhiteAlert
    highlight! link DiagnosticFloatingError NightflyRed
    highlight! link DiagnosticFloatingWarn NightflyYellow
    highlight! link DiagnosticFloatingInfo NightflyBlue
    highlight! link DiagnosticFloatingHint NightflyWhite
    highlight! link LspSignatureActiveParameter NightflyVisual
endif

"-----------------------------------------------------------------------
" Language styling
"-----------------------------------------------------------------------

" Neovim 0.8 provides builtin Treesitter support for C, Lua and Vimscript.
" Likewise, common languages, such as C++, JavaScript, Python and others, now
" have mature Treesitter support via the nvim-treesitter plugin. Hence, only
" setup old-school regex highlight groups for Vim and Neovim versions prior to
" 0.8.
if !has('nvim-0.8')
    " C
    highlight! link cDefine NightflyViolet
    highlight! link cPreCondit NightflyViolet
    highlight! link cStatement NightflyViolet
    highlight! link cStructure NightflyOrange

    " C++
    highlight! link cppAccess NightflyGreen
    highlight! link cppCast NightflyTurquoise
    highlight! link cppCustomClass NightflyTurquoise
    highlight! link cppExceptions NightflyGreen
    highlight! link cppModifier NightflyViolet
    highlight! link cppOperator NightflyGreen
    highlight! link cppSTLconstant NightflyIndigo
    highlight! link cppSTLnamespace NightflyIndigo
    highlight! link cppStatement NightflyTurquoise
    highlight! link cppStructure NightflyViolet

    " C#
    highlight! link csModifier NightflyGreen
    highlight! link csPrecondit NightflyViolet
    highlight! link csStorage NightflyViolet
    highlight! link csXmlTag NightflyBlue

    " Go
    highlight! link goBuiltins NightflyBlue
    highlight! link goConditional NightflyViolet
    highlight! link goDeclType NightflyGreen
    highlight! link goDirective NightflyWatermelon
    highlight! link goFloats NightflyOrange
    highlight! link goFunction NightflyBlue
    highlight! link goFunctionCall NightflyBlue
    highlight! link goImport NightflyWatermelon
    highlight! link goLabel NightflyYellow
    highlight! link goMethod NightflyBlue
    highlight! link goMethodCall NightflyBlue
    highlight! link goPackage NightflyViolet
    highlight! link goSignedInts NightflyEmerald
    highlight! link goStruct NightflyOrange
    highlight! link goStructDef NightflyOrange
    highlight! link goUnsignedInts NightflyOrange

    " Java
    highlight! link javaAnnotation NightflyGreen
    highlight! link javaBraces NightflyWhite
    highlight! link javaClassDecl NightflyPeach
    highlight! link javaCommentTitle NightflyCadetBlue
    highlight! link javaConstant NightflyBlue
    highlight! link javaDebug NightflyBlue
    highlight! link javaMethodDecl NightflyYellow
    highlight! link javaOperator NightflyWatermelon
    highlight! link javaScopeDecl NightflyViolet
    highlight! link javaStatement NightflyTurquoise

    " JavaScript, 'pangloss/vim-javascript' plugin
    highlight! link jsClassDefinition NightflyEmerald
    highlight! link jsClassKeyword NightflyViolet
    highlight! link jsClassMethodType NightflyEmerald
    highlight! link jsExceptions NightflyEmerald
    highlight! link jsFrom NightflyOrange
    highlight! link jsFuncBlock NightflyTurquoise
    highlight! link jsFuncCall NightflyBlue
    highlight! link jsFunction NightflyViolet
    highlight! link jsGlobalObjects NightflyGreen
    highlight! link jsModuleAs NightflyOrange
    highlight! link jsObjectKey NightflyBlue
    highlight! link jsObjectValue NightflyEmerald
    highlight! link jsOperator NightflyViolet
    highlight! link jsStorageClass NightflyGreen
    highlight! link jsTemplateBraces NightflyWatermelon
    highlight! link jsTemplateExpression NightflyTurquoise
    highlight! link jsThis NightflyTurquoise

    " JSX, 'MaxMEllon/vim-jsx-pretty' plugin
    highlight! link jsxAttrib NightflyGreen
    highlight! link jsxClosePunct NightflyPurple
    highlight! link jsxComponentName NightflyBlue
    highlight! link jsxOpenPunct NightflyGreen
    highlight! link jsxTagName NightflyBlue

    " Lua
    highlight! link luaBraces NightflyWatermelon
    highlight! link luaBuiltin NightflyGreen
    highlight! link luaFuncCall NightflyBlue
    highlight! link luaSpecialTable NightflyBlue

    " Python
    highlight! link pythonBuiltin NightflyBlue
    highlight! link pythonClassVar NightflyGreen
    highlight! link pythonCoding NightflyBlue
    highlight! link pythonImport NightflyWatermelon
    highlight! link pythonOperator NightflyViolet
    highlight! link pythonRun NightflyBlue
    highlight! link pythonStatement NightflyViolet

    " Ruby
    highlight! link rubyAccess NightflyYellow
    highlight! link rubyAssertion NightflyBlue
    highlight! link rubyAttribute NightflyBlue
    highlight! link rubyBlockParameter NightflyGreen
    highlight! link rubyCallback NightflyBlue
    highlight! link rubyClassName NightflyEmerald
    highlight! link rubyDefine NightflyViolet
    highlight! link rubyEntities NightflyBlue
    highlight! link rubyExceptional NightflyOrange
    highlight! link rubyGemfileMethod NightflyBlue
    highlight! link rubyInstanceVariable NightflyTurquoise
    highlight! link rubyInterpolationDelimiter NightflyWatermelon
    highlight! link rubyMacro NightflyBlue
    highlight! link rubyModule NightflyBlue
    highlight! link rubyModuleName NightflyEmerald
    highlight! link rubyPseudoVariable NightflyGreen
    highlight! link rubyResponse NightflyBlue
    highlight! link rubyRoute NightflyBlue
    highlight! link rubySharpBang NightflyCadetBlue
    highlight! link rubyStringDelimiter NightflyTan
    highlight! link rubySymbol NightflyPurple

    " Rust
    highlight! link rustAssert NightflyGreen
    highlight! link rustAttribute NightflyReset
    highlight! link rustCharacterInvalid NightflyWatermelon
    highlight! link rustCharacterInvalidUnicode NightflyWatermelon
    highlight! link rustCommentBlockDoc NightflyCadetBlue
    highlight! link rustCommentBlockDocError NightflyCadetBlue
    highlight! link rustCommentLineDoc NightflyCadetBlue
    highlight! link rustCommentLineDocError NightflyCadetBlue
    highlight! link rustConstant NightflyOrange
    highlight! link rustDerive NightflyGreen
    highlight! link rustEscapeError NightflyWatermelon
    highlight! link rustFuncName NightflyBlue
    highlight! link rustIdentifier NightflyBlue
    highlight! link rustInvalidBareKeyword NightflyWatermelon
    highlight! link rustKeyword NightflyViolet
    highlight! link rustLifetime NightflyViolet
    highlight! link rustMacro NightflyGreen
    highlight! link rustMacroVariable NightflyViolet
    highlight! link rustModPath NightflyIndigo
    highlight! link rustObsoleteExternMod NightflyWatermelon
    highlight! link rustObsoleteStorage NightflyWatermelon
    highlight! link rustReservedKeyword NightflyWatermelon
    highlight! link rustSelf NightflyTurquoise
    highlight! link rustSigil NightflyTurquoise
    highlight! link rustStorage NightflyViolet
    highlight! link rustStructure NightflyViolet
    highlight! link rustTrait NightflyEmerald
    highlight! link rustType NightflyEmerald

    " TypeScript (leafgarland/typescript-vim)
    highlight! link typescriptDOMObjects NightflyBlue
    highlight! link typescriptFuncComma NightflyWhite
    highlight! link typescriptFuncKeyword NightflyGreen
    highlight! link typescriptGlobalObjects NightflyBlue
    highlight! link typescriptIdentifier NightflyGreen
    highlight! link typescriptNull NightflyGreen
    highlight! link typescriptOpSymbols NightflyViolet
    highlight! link typescriptOperator NightflyWatermelon
    highlight! link typescriptParens NightflyWhite
    highlight! link typescriptReserved NightflyViolet
    highlight! link typescriptStorageClass NightflyGreen

    " TypeScript (HerringtonDarkholme/yats.vim)
    highlight! link typeScriptModule NightflyBlue
    highlight! link typescriptAbstract NightflyOrange
    highlight! link typescriptArrayMethod NightflyBlue
    highlight! link typescriptArrowFuncArg NightflyWhite
    highlight! link typescriptBOM NightflyEmerald
    highlight! link typescriptBOMHistoryMethod NightflyBlue
    highlight! link typescriptBOMLocationMethod NightflyBlue
    highlight! link typescriptBOMWindowProp NightflyGreen
    highlight! link typescriptBraces NightflyWhite
    highlight! link typescriptCall NightflyWhite
    highlight! link typescriptClassHeritage NightflyPeach
    highlight! link typescriptClassKeyword NightflyViolet
    highlight! link typescriptClassName NightflyEmerald
    highlight! link typescriptDecorator NightflyGreen
    highlight! link typescriptDOMDocMethod NightflyBlue
    highlight! link typescriptDOMEventTargetMethod NightflyBlue
    highlight! link typescriptDOMNodeMethod NightflyBlue
    highlight! link typescriptExceptions NightflyWatermelon
    highlight! link typescriptFuncType NightflyWhite
    highlight! link typescriptMathStaticMethod NightflyBlue
    highlight! link typescriptMethodAccessor NightflyViolet
    highlight! link typescriptObjectLabel NightflyBlue
    highlight! link typescriptParamImpl NightflyWhite
    highlight! link typescriptStringMethod NightflyBlue
    highlight! link typescriptTry NightflyWatermelon
    highlight! link typescriptVariable NightflyGreen
    highlight! link typescriptXHRMethod NightflyBlue

    " Vimscript
    highlight! link vimBracket NightflyBlue
    highlight! link vimCommand NightflyViolet
    highlight! link vimCommentTitle NightflyViolet
    highlight! link vimEnvvar NightflyWatermelon
    highlight! link vimFuncName NightflyBlue
    highlight! link vimFuncSID NightflyBlue
    highlight! link vimFunction NightflyBlue
    highlight! link vimHighlight NightflyBlue
    highlight! link vimNotFunc NightflyViolet
    highlight! link vimNotation NightflyBlue
    highlight! link vimOption NightflyTurquoise
    highlight! link vimParenSep NightflyWhite
    highlight! link vimSep NightflyWhite
    highlight! link vimUserFunc NightflyBlue
endif

" Clojure
highlight! link clojureDefine NightflyViolet
highlight! link clojureKeyword NightflyTurquoise
highlight! link clojureMacro NightflyOrange
highlight! link clojureParen NightflyBlue
highlight! link clojureSpecial NightflyViolet

" CoffeeScript
highlight! link coffeeConstant NightflyOrange
highlight! link coffeeGlobal NightflyWatermelon
highlight! link coffeeKeyword NightflyOrange
highlight! link coffeeObject NightflyEmerald
highlight! link coffeeObjAssign NightflyBlue
highlight! link coffeeSpecialIdent NightflyTurquoise
highlight! link coffeeSpecialVar NightflyBlue
highlight! link coffeeStatement NightflyOrange

" Crystal
highlight! link crystalAccess NightflyYellow
highlight! link crystalAttribute NightflyBlue
highlight! link crystalBlockParameter NightflyGreen
highlight! link crystalClass NightflyViolet
highlight! link crystalDefine NightflyViolet
highlight! link crystalExceptional NightflyOrange
highlight! link crystalInstanceVariable NightflyTurquoise
highlight! link crystalModule NightflyBlue
highlight! link crystalPseudoVariable NightflyGreen
highlight! link crystalSharpBang NightflyCadetBlue
highlight! link crystalStringDelimiter NightflyTan
highlight! link crystalSymbol NightflyPurple

" CSS/SCSS
highlight! link cssAtRule NightflyViolet
highlight! link cssAttr NightflyTurquoise
highlight! link cssBraces NightflyReset
highlight! link cssClassName NightflyEmerald
highlight! link cssClassNameDot NightflyViolet
highlight! link cssColor NightflyTurquoise
highlight! link cssIdentifier NightflyBlue
highlight! link cssProp NightflyTurquoise
highlight! link cssTagName NightflyBlue
highlight! link cssUnitDecorators NightflyTan
highlight! link cssValueLength NightflyPurple
highlight! link cssValueNumber NightflyPurple
highlight! link sassId NightflyBlue
highlight! link sassIdChar NightflyViolet
highlight! link sassMedia NightflyViolet
highlight! link scssSelectorName NightflyBlue

" Dart
highlight! link dartMetadata NightflyGreen
highlight! link dartStorageClass NightflyViolet
highlight! link dartTypedef NightflyViolet

" Elixir
highlight! link eelixirDelimiter NightflyWatermelon
highlight! link elixirAtom NightflyPurple
highlight! link elixirBlockDefinition NightflyViolet
highlight! link elixirDefine NightflyViolet
highlight! link elixirDocTest NightflyCadetBlue
highlight! link elixirExUnitAssert NightflyGreen
highlight! link elixirExUnitMacro NightflyBlue
highlight! link elixirKernelFunction NightflyGreen
highlight! link elixirKeyword NightflyOrange
highlight! link elixirModuleDefine NightflyBlue
highlight! link elixirPrivateDefine NightflyViolet
highlight! link elixirStringDelimiter NightflyTan
highlight! link elixirVariable NightflyTurquoise

" Elm
highlight! link elmLetBlockDefinition NightflyGreen
highlight! link elmTopLevelDecl NightflyOrange
highlight! link elmType NightflyBlue

" Haskell
highlight! link haskellDecl NightflyOrange
highlight! link haskellDeclKeyword NightflyOrange
highlight! link haskellIdentifier NightflyTurquoise
highlight! link haskellLet NightflyBlue
highlight! link haskellOperators NightflyWatermelon
highlight! link haskellType NightflyBlue
highlight! link haskellWhere NightflyViolet

" HTML
highlight! link htmlArg NightflyTurquoise
highlight! link htmlLink NightflyGreen
highlight! link htmlEndTag NightflyPurple
highlight! link htmlH1 NightflyWatermelon
highlight! link htmlH2 NightflyOrange
highlight! link htmlTag NightflyGreen
highlight! link htmlTagN NightflyBlue
highlight! link htmlTagName NightflyBlue
highlight! link htmlUnderline NightflyWhite
if g:nightflyItalics
    exec 'highlight htmlBoldItalic guibg=' . s:black . ' guifg=' . s:orange . ' gui=italic'
    exec 'highlight htmlBoldUnderlineItalic guibg=' . s:black . ' guifg=' . s:orange . ' gui=italic'
    exec 'highlight htmlItalic guifg=' . s:cadet_blue . ' gui=italic'
    exec 'highlight htmlUnderlineItalic guibg=' . s:black . ' guifg=' . s:cadet_blue . ' gui=italic'
else
    exec 'highlight htmlBoldItalic guibg=' . s:black . ' guifg=' . s:orange
    exec 'highlight htmlBoldUnderlineItalic guibg=' . s:black . ' guifg=' . s:orange
    exec 'highlight htmlItalic guifg=' . s:cadet_blue ' gui=none'
    exec 'highlight htmlUnderlineItalic guibg=' . s:black . ' guifg=' . s:cadet_blue
endif

" Markdown, 'tpope/vim-markdown' plugin
highlight! link markdownBold NightflyPeach
highlight! link markdownCode NightflyTan
highlight! link markdownCodeDelimiter NightflyTan
highlight! link markdownError NormalNC
highlight! link markdownH1 NightflyOrange
highlight! link markdownHeadingRule NightflyBlue
highlight! link markdownItalic NightflyViolet
highlight! link markdownUrl NightflyPurple

" Markdown, 'plasticboy/vim-markdown' plugin
highlight! link mkdDelimiter NightflyWhite
highlight! link mkdLineBreak NormalNC
highlight! link mkdListItem NightflyBlue
highlight! link mkdURL NightflyPurple

" PHP
highlight! link phpClass NightflyEmerald
highlight! link phpClasses NightflyIndigo
highlight! link phpFunction NightflyBlue
highlight! link phpParent NightflyReset
highlight! link phpType NightflyViolet

" PureScript
highlight! link purescriptClass NightflyPeach
highlight! link purescriptModuleParams NightflyOrange

" Scala (note, link highlighting does not work, I don't know why)
exec 'highlight scalaCapitalWord guifg=' . s:blue
exec 'highlight scalaCommentCodeBlock guifg=' . s:cadet_blue
exec 'highlight scalaInstanceDeclaration guifg=' . s:turquoise
exec 'highlight scalaKeywordModifier guifg=' . s:green
exec 'highlight scalaSpecial guifg=' . s:watermelon

" Shell scripts
highlight! link shAlias NightflyTurquoise
highlight! link shCommandSub NightflyReset
highlight! link shLoop NightflyViolet
highlight! link shSetList NightflyTurquoise
highlight! link shShellVariables NightflyGreen
highlight! link shVariable NightflyTurquoise

" XML
highlight! link xmlAttrib NightflyGreen
highlight! link xmlEndTag NightflyBlue
highlight! link xmlTag NightflyGreen
highlight! link xmlTagName NightflyBlue

"-----------------------------------------------------------------------
" Plugin styling
"-----------------------------------------------------------------------

" Git commits
highlight! link gitCommitBranch NightflyBlue
highlight! link gitCommitDiscardedFile NightflyWatermelon
highlight! link gitCommitDiscardedType NightflyBlue
highlight! link gitCommitHeader NightflyPurple
highlight! link gitCommitSelectedFile NightflyEmerald
highlight! link gitCommitSelectedType NightflyBlue
highlight! link gitCommitUntrackedFile NightflyWatermelon
highlight! link gitEmail NightflyBlue

" Git commit diffs
highlight! link diffAdded NightflyGreen
highlight! link diffChanged NightflyWatermelon
highlight! link diffIndexLine NightflyWatermelon
highlight! link diffLine NightflyBlue
highlight! link diffRemoved NightflyRed
highlight! link diffSubname NightflyBlue

" Glyph palette
highlight! link GlyphPalette1 NightflyWatermelon
highlight! link GlyphPalette2 NightflyEmerald
highlight! link GlyphPalette3 NightflyYellow
highlight! link GlyphPalette4 NightflyBlue
highlight! link GlyphPalette6 NightflyTurquoise
highlight! link GlyphPalette7 NightflyWhite
highlight! link GlyphPalette9 NightflyWatermelon

" Misc items
highlight! link bufExplorerHelp NightflyCadetBlue
highlight! link bufExplorerSortBy NightflyCadetBlue
highlight! link CleverFDefaultLabel NightflyWatermelon
highlight! link CtrlPMatch NightflyOrange
highlight! link Directory NightflyBlue
highlight! link erubyDelimiter NightflyWatermelon
highlight! link HighlightedyankRegion NightflyRegalBlue
highlight! link jsonKeyword NightflyBlue
highlight! link jsonBoolean NightflyTurquoise
highlight! link jsonQuote NightflyWhite
highlight! link netrwClassify NightflyWatermelon
highlight! link netrwDir NightflyBlue
highlight! link netrwExe NightflyTan
highlight! link tagName NightflyTurquoise
highlight! link Cheat40Header NightflyBlue
highlight! link yamlBlockMappingKey NightflyBlue
highlight! link yamlFlowMappingKey NightflyBlue
if g:nightflyUnderlineMatchParen
    exec 'highlight MatchWord gui=underline guisp=' . s:orange
else
    highlight! link MatchWord NightflyOrange
endif
exec 'highlight snipLeadingSpaces guibg=bg guifg=fg'
exec 'highlight MatchWordCur guibg=bg'

" Neovim only plugins
if has('nvim-0.7')
    lua require("nightfly").plugins()
elseif has('nvim-0.6')
    " NvimTree plugin
    highlight! link NvimTreeFolderIcon NightflyBlue
    highlight! link NvimTreeFolderName NightflyBlue
    highlight! link NvimTreeIndentMarker NightflyPickleBlue
    highlight! link NvimTreeOpenedFolderName NightflyBlue
    highlight! link NvimTreeRootFolder NightflyPurple
    highlight! link NvimTreeSpecialFile NightflyYellow
    highlight! link NvimTreeWindowPicker DiffChange
    exec 'highlight NvimTreeExecFile guifg=' . s:green . ' gui=none'
    exec 'highlight NvimTreeImageFile guifg=' . s:violet . ' gui=none'
    exec 'highlight NvimTreeOpenedFile guifg=' . s:yellow . ' gui=none'
    exec 'highlight NvimTreeSymlink guifg=' . s:turquoise . ' gui=none'

    " Telescope plugin
    highlight! link TelescopeBorder NightflySlateBlue
    highlight! link TelescopeMatching NightflyOrange
    highlight! link TelescopeMultiIcon NightflyWatermelon
    highlight! link TelescopeMultiSelection NightflyEmerald
    highlight! link TelescopeNormal NightflyAshBlue
    highlight! link TelescopePreviewDate NightflyGreyBlue
    highlight! link TelescopePreviewGroup NightflyGreyBlue
    highlight! link TelescopePreviewLink NightflyTurquoise
    highlight! link TelescopePreviewMatch NightflyVisual
    highlight! link TelescopePreviewRead NightflyOrange
    highlight! link TelescopePreviewSize NightflyEmerald
    highlight! link TelescopePreviewUser NightflyGreyBlue
    highlight! link TelescopePromptPrefix NightflyBlue
    highlight! link TelescopeResultsDiffAdd NightflyGreen
    highlight! link TelescopeResultsDiffChange NightflyRed
    highlight! link TelescopeResultsDiffDelete NightflyWatermelonLine
    highlight! link TelescopeResultsSpecialComment NightflySteelBlue
    highlight! link TelescopeSelectionCaret NightflyWatermelon
    highlight! link TelescopeTitle NightflySteelBlue
    exec 'highlight TelescopeSelection guibg=' . s:regal_blue . ' guifg=' . s:white_blue

    " gitsigns.nvim plugin
    highlight! link GitSignsAdd NightflyEmeraldAlert
    highlight! link GitSignsAddLn NightflyGreen
    highlight! link GitSignsAddPreview NightflyEmeraldLine
    highlight! link GitSignsChange NightflyYellowAlert
    highlight! link GitSignsChangeDelete NightflyOrangeAlert
    highlight! link GitSignsChangeLn NightflyYellow
    highlight! link GitSignsChangeNr NightflyYellowAlert
    highlight! link GitSignsDelete NightflyRedAlert
    highlight! link GitSignsDeleteLn NightflyRed
    highlight! link GitSignsDeletePreview NightflyWatermelonLine
    highlight! link GitSignsDeleteVirtLn NightflyWatermelonLine
    exec 'highlight GitSignsAddInline guibg=' . s:green . ' guifg=' . s:black
    exec 'highlight GitSignsChangeInline guibg=' . s:yellow . ' guifg=' . s:black
    exec 'highlight GitSignsDeleteInline guibg=' . s:red . ' guifg=' . s:black

    " nvim-cmp plugin
    highlight! link CmpItemAbbrMatch NightflyTan
    highlight! link CmpItemAbbrMatchFuzzy NightflyOrange
    highlight! link CmpItemKind NightflyWhite
    highlight! link CmpItemKindClass NightflyEmerald
    highlight! link CmpItemKindColor NightflyTurquoise
    highlight! link CmpItemKindConstant NightflyPurple
    highlight! link CmpItemKindConstructor NightflyBlue
    highlight! link CmpItemKindEnum NightflyViolet
    highlight! link CmpItemKindEnumMember NightflyTurquoise
    highlight! link CmpItemKindEvent NightflyViolet
    highlight! link CmpItemKindField NightflyTurquoise
    highlight! link CmpItemKindFile NightflyBlue
    highlight! link CmpItemKindFolder NightflyBlue
    highlight! link CmpItemKindFunction NightflyBlue
    highlight! link CmpItemKindInterface NightflyEmerald
    highlight! link CmpItemKindKeyword NightflyViolet
    highlight! link CmpItemKindMethod NightflyBlue
    highlight! link CmpItemKindModule NightflyEmerald
    highlight! link CmpItemKindOperator NightflyViolet
    highlight! link CmpItemKindProperty NightflyTurquoise
    highlight! link CmpItemKindReference NightflyTurquoise
    highlight! link CmpItemKindSnippet NightflyGreen
    highlight! link CmpItemKindStruct NightflyEmerald
    highlight! link CmpItemKindText NightflyAshBlue
    highlight! link CmpItemKindTypeParameter NightflyEmerald
    highlight! link CmpItemKindUnit NightflyTurquoise
    highlight! link CmpItemKindValue NightflyTurquoise
    highlight! link CmpItemKindVariable NightflyTurquoise
    highlight! link CmpItemMenu NightflyCadetBlue

    " Indent Blankline plugin
    exec 'highlight IndentBlanklineChar guifg=' . s:deep_blue  . ' gui=nocombine'
    exec 'highlight IndentBlanklineSpaceChar guifg=' . s:deep_blue  . ' gui=nocombine'
    exec 'highlight IndentBlanklineSpaceCharBlankline guifg=' . s:deep_blue  . ' gui=nocombine'
endif

set background=dark
