classdef colorSettingsEnum
    enumeration
        TEXT_COLOR ('ColorsText'),
        BACKGROUND_COLOR ('ColorsBackground'),
        USE_SYSTEM_COLORS ('ColorsUseSystem'),
        M_COLORS ('Colors_M_'),
        HTML_COLORS ('Colors_HTML_'),
        HYPERLINK_COLOR ('Colors_HTML_HTMLLinks'),
        SEARCH_RESULT_HIGHLIGHT ('ColorsSearchResult'),
        CMD_WIN_WARNINGS_COLOR ('Color_CmdWinWarnings'),
        CMD_WIN_ERRORS_COLOR ('Color_CmdWinErrors'),
        M_KEYWORDS ('Colors_M_Keywords'),
        M_COMMENTS ('Colors_M_Comments'),
        M_STRINGS ('Colors_M_Strings'),
        M_UNTERMINATED_STRINGS ('Colors_M_UnterminatedStrings'),
        M_SYSTEM_COMMANDS ('Colors_M_SystemCommands'),
        M_WARNINGS ('Colors_M_Warnings'),
        M_ERRORS ('Colors_M_Errors'),
        USE_MLINT_AUTOFIX_BACKGROUND ('ColorsUseMLintAutoFixBackground'),
        MLINT_AUTOFIX_BACKGROUND_COLOR ('ColorsMLintAutoFixBackground'),
        EDITOR_VAR_HLIGHT('Editor.VariableHighlighting.Color'),
        EDITOR_CELL_HLIGHT('Editorhighlight-lines'),
        EDITOR_NONLOCAL_VAR_HLIGHT('Editor.NonlocalVariableHighlighting.TextColor')
    end
end
