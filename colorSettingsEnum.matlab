classdef colorSettingsEnum
    enumeration
        TEXT_COLOR ('ColorsText'),
        BACKGROUND_COLOR ('ColorsBackground'),
        
        M_KEYWORDS ('Colors_M_Keywords'),
        M_COMMENTS ('Colors_M_Comments'),
        M_STRINGS ('Colors_M_Strings'),
        M_UNTERMINATED_STRINGS ('Colors_M_UnterminatedStrings'),
        M_SYSTEM_COMMANDS ('Colors_M_SystemCommands'),
        M_ERRORS ('Colors_M_Errors'),
        
        CMD_WIN_ERRORS_COLOR ('Color_CmdWinErrors'),
        CMD_WIN_WARNINGS_COLOR ('Color_CmdWinWarnings'),
        HYPERLINK_COLOR ('Colors_HTML_HTMLLinks'),
        
        M_WARNINGS ('Colors_M_Warnings'),
        USE_MLINT_AUTOFIX_BACKGROUND ('ColorsUseMLintAutoFixBackground'),
        MLINT_AUTOFIX_BACKGROUND_COLOR ('ColorsMLintAutoFixBackground'),
        EDITOR_VAR_HLIGHT('Editor.VariableHighlighting.Color'),
        EDITOR_NONLOCAL_VAR_HLIGHT('Editor.NonlocalVariableHighlighting.TextColor'),
        EDITOR_CELL_HLIGHT('Editorhighlight-lines'),
        
        SEARCH_RESULT_HIGHLIGHT ('ColorsSearchResult'),
        USE_SYSTEM_COLORS ('ColorsUseSystem'),
        M_COLORS ('Colors_M_'),
        HTML_COLORS ('Colors_HTML_')
    end
end
