set background=dark

hi clear
if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'curzes'

let s:t_Co = exists('&t_Co') && !empty(&t_Co) && &t_Co > 1 ? &t_Co : 2
let s:italics = (((&t_ZH != '' && &t_ZH != '[7m') || has('gui_running')) && !has('iOS')) || has('nvim')

if s:t_Co >= 256
  if exists('g:corvine_italics')
    let s:italics = g:corvine_italics
  endif
  hi Normal ctermfg=252 ctermbg=235 cterm=NONE
  if !has('patch-8.0.0616') && !has('nvim') " Fix for Vim bug
    set background=dark
  endif
  hi Cursor ctermfg=235 ctermbg=255 cterm=NONE
  hi None ctermfg=NONE ctermbg=NONE cterm=NONE
  hi CursorLineNr ctermfg=252 ctermbg=237 cterm=NONE
  hi FoldColumn ctermfg=242 ctermbg=234 cterm=NONE
  hi Folded ctermfg=242 ctermbg=234 cterm=NONE
  hi LineNr ctermfg=242 ctermbg=234 cterm=NONE
  hi MatchParen ctermfg=255 ctermbg=234 cterm=bold
  hi SignColumn ctermfg=242 ctermbg=234 cterm=NONE
  hi Ignore ctermfg=240 ctermbg=NONE cterm=NONE
  hi Pmenu ctermfg=246 ctermbg=237 cterm=NONE
  hi PmenuSbar ctermfg=234 ctermbg=234 cterm=NONE
  hi PmenuSel ctermfg=255 ctermbg=238 cterm=NONE
  hi PmenuThumb ctermfg=240 ctermbg=240 cterm=NONE
  hi ErrorMsg ctermfg=235 ctermbg=174 cterm=NONE
  hi ModeMsg ctermfg=107 ctermbg=NONE cterm=bold
  hi MoreMsg ctermfg=186 ctermbg=NONE cterm=NONE
  hi Question ctermfg=186 ctermbg=NONE cterm=NONE
  hi WarningMsg ctermfg=174 ctermbg=NONE cterm=NONE
  hi ColorColumn ctermfg=NONE ctermbg=234 cterm=NONE
  hi CursorColumn ctermfg=NONE ctermbg=236 cterm=NONE
  hi CursorLine ctermfg=NONE ctermbg=236 cterm=NONE
  hi QuickFixLine ctermfg=235 ctermbg=186 cterm=NONE
  hi StatusLine ctermfg=252 ctermbg=238 cterm=NONE
  hi StatusLineNC ctermfg=246 ctermbg=237 cterm=NONE
  hi VertSplit ctermfg=237 ctermbg=237 cterm=NONE
  hi WildMenu ctermfg=255 ctermbg=242 cterm=NONE
  hi IncSearch ctermfg=235 ctermbg=172 cterm=NONE
  hi Search ctermfg=235 ctermbg=178 cterm=NONE
  hi Visual ctermfg=NONE ctermbg=237 cterm=NONE
  hi DiffAdd ctermfg=150 ctermbg=237 cterm=NONE
  hi DiffChange ctermfg=NONE ctermbg=237 cterm=NONE
  hi DiffDelete ctermfg=174 ctermbg=237 cterm=NONE
  hi DiffText ctermfg=180 ctermbg=238 cterm=NONE
  hi Comment ctermfg=242 ctermbg=NONE cterm=italic
  hi Constant ctermfg=186 ctermbg=NONE cterm=NONE
  hi Error ctermfg=235 ctermbg=174 cterm=NONE
  hi Identifier ctermfg=182 ctermbg=NONE cterm=NONE
  hi PreProc ctermfg=150 ctermbg=NONE cterm=NONE
  hi Special ctermfg=103 ctermbg=NONE cterm=NONE
  hi Statement ctermfg=110 ctermbg=NONE cterm=NONE
  hi Type ctermfg=146 ctermbg=NONE cterm=NONE
  hi Delimiter ctermfg=246 ctermbg=NONE cterm=NONE
  hi Directory ctermfg=116 ctermbg=NONE cterm=NONE
  hi Function ctermfg=182 ctermbg=NONE cterm=NONE
  hi Number ctermfg=180 ctermbg=NONE cterm=NONE
  hi SpecialComment ctermfg=246 ctermbg=NONE cterm=italic
  hi String ctermfg=187 ctermbg=NONE cterm=NONE
  hi Title ctermfg=252 ctermbg=NONE cterm=bold
  hi Todo ctermfg=255 ctermbg=NONE cterm=NONE
  hi Underlined ctermfg=117 ctermbg=NONE cterm=underline
  hi SpellBad ctermfg=NONE ctermbg=NONE cterm=undercurl
  hi SpellCap ctermfg=NONE ctermbg=NONE cterm=undercurl
  hi SpellLocal ctermfg=NONE ctermbg=NONE cterm=undercurl
  hi SpellRare ctermfg=NONE ctermbg=NONE cterm=undercurl
  if !s:italics
    hi Comment cterm=NONE
    hi SpecialComment cterm=NONE
  endif
  let g:indentLine_color_gui  = '#585858'
  let g:indentLine_color_term = 240
  hi! link Terminal Normal
  hi! link TabLine StatusLineNC
  hi! link TabLineFill StatusLineNC
  hi! link TabLineSel StatusLine
  hi! link StatusLineTerm StatusLine
  hi! link StatusLineTermNC StatusLineNC
  hi! link VisualNOS Visual
  hi! link diffAdded DiffAdd
  hi! link diffBDiffer WarningMsg
  hi! link diffChanged DiffChange
  hi! link diffCommon WarningMsg
  hi! link diffDiffer WarningMsg
  hi! link diffFile Directory
  hi! link diffIdentical WarningMsg
  hi! link diffIndexLine Number
  hi! link diffIsA WarningMsg
  hi! link diffNoEOL WarningMsg
  hi! link diffOnly WarningMsg
  hi! link diffRemoved DiffDelete
  hi! link Boolean Constant
  hi! link Character Constant
  hi! link Float Number
  hi! link Conditional Statement
  hi! link Exception Statement
  hi! link Keyword Statement
  hi! link Label Statement
  hi! link Operator Statement
  hi! link Repeat Statement
  hi! link Define PreProc
  hi! link Include PreProc
  hi! link Macro PreProc
  hi! link PreCondit PreProc
  hi! link StorageClass Type
  hi! link Structure Type
  hi! link Typedef Type
  hi! link Debug Special
  hi! link SpecialChar Special
  hi! link Tag Special
  hi! link Noise Delimiter
  hi! link StringDelimiter Delimiter
  hi! link Conceal Ignore
  hi! link NonText Ignore
  hi! link SpecialKey Ignore
  hi! link EndOfBuffer Ignore
  hi! link Whitespace Ignore
  hi! link Searchlight IncSearch
  hi! link cssBraces Delimiter
  hi! link gitcommitOverflow Error
  hi! link gitcommitSummary Title
  hi! link helpHyperTextJump Underlined
  hi! link htmlEndTag Delimiter
  hi! link htmlLink Underlined
  hi! link htmlSpecialTagName htmlTagName
  hi! link htmlTag Delimiter
  hi! link htmlTagName Statement
  hi! link scssAttribute Delimiter
  hi! link vimAutoCmdSfxList Type
  hi! link vimAutoEventList Identifier
  hi! link vimCmdSep Special
  hi! link vimCommentTitle SpecialComment
  hi! link vimHighlight Statement
  hi! link vimUserFunc Function
  hi markdownBold ctermfg=NONE ctermbg=NONE cterm=bold
  hi markdownItalic ctermfg=NONE ctermbg=NONE cterm=italic
  hi markdownUrl ctermfg=242 ctermbg=NONE cterm=underline
  hi markdownCode ctermfg=NONE ctermbg=237 cterm=NONE
  hi markdownFaded ctermfg=242 ctermbg=NONE cterm=NONE
  hi! link markdownBlockquote None
  hi! link markdownCodeBlock markdownCode
  hi! link markdownCodeDelimiter markdownCode
  hi! link markdownH1Delimiter markdownH1
  hi! link markdownH2Delimiter markdownH2
  hi! link markdownH3Delimiter markdownH3
  hi! link markdownH4Delimiter markdownH4
  hi! link markdownH5Delimiter markdownH5
  hi! link markdownH6Delimiter markdownH6
  hi! link markdownId markdownFaded
  hi! link markdownIdDeclaration markdownFaded
  hi! link markdownLinkDelimiter markdownFaded
  hi! link markdownLinkText None
  hi! link markdownLinkTextDelimiter markdownFaded
  hi! link markdownListMarker None
  hi! link markdownRule None
  if !s:italics
    hi markdownItalic cterm=NONE
  endif
  unlet s:t_Co s:italics
  finish
endif