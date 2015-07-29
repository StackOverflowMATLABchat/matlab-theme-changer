function MatlabThemeChooser
f = figure('Menubar','none', 'NumberTitle','off', ...
    'Name','MATLAB Theme Editor', 'Position',[810 352 275 578]);
padding = {'Padding',5, 'Spacing',5};
panelprops = {'BorderType','line', 'HighlightColor',[.8 .8 .8]};
txtprops = {'Horizontal','left'};
butprops = {'Callback','set(gcbo,''BackgroundColor'',uisetcolor(get(gcbo,''BackgroundColor'')))'};
 
v0 = uix.VBox('Parent',f, padding{:});
 
%%
p1 = uipanel('Parent',v0, 'Title','Desktop tool colors', panelprops{:});
h1 = uix.HBox('Parent',p1, padding{:});
v1 = [uix.VBox('Parent',h1), uix.VBox('Parent',h1)];
 
uicontrol('Parent',v1(1), 'Style','text', txtprops{:}, 'String','Text');
uicontrol('Parent',v1(1), 'Style','text', txtprops{:}, 'String','Background');
uicontrol('Parent',v1(2), 'Style','pushbutton', butprops{:}, 'BackgroundColor','k','Tag','ColorsText')
uicontrol('Parent',v1(2), 'Style','pushbutton', butprops{:}, 'BackgroundColor','k','Tag','ColorsBackground')
 
%%
p2 = uipanel('Parent',v0, 'Title','MATLAB syntax highlighting colors', panelprops{:});
h2 = uix.HBox('Parent',p2, padding{:});
v2 = [uix.VBox('Parent',h2), uix.VBox('Parent',h2)];
 
uicontrol('Parent',v2(1), 'Style','text', txtprops{:}, 'String','Keywords');
uicontrol('Parent',v2(1), 'Style','text', txtprops{:}, 'String','Comments');
uicontrol('Parent',v2(1), 'Style','text', txtprops{:}, 'String','Strings');
uicontrol('Parent',v2(1), 'Style','text', txtprops{:}, 'String','Unterminated Strings');
uicontrol('Parent',v2(1), 'Style','text', txtprops{:}, 'String','System Commands');
uicontrol('Parent',v2(1), 'Style','text', txtprops{:}, 'String','Syntax Errors');
uicontrol('Parent',v2(2), 'Style','pushbutton', butprops{:}, 'BackgroundColor','k','Tag','Colors_M_Keywords');
uicontrol('Parent',v2(2), 'Style','pushbutton', butprops{:}, 'BackgroundColor','k','Tag','Colors_M_Comments');
uicontrol('Parent',v2(2), 'Style','pushbutton', butprops{:}, 'BackgroundColor','k','Tag','Colors_M_Strings');
uicontrol('Parent',v2(2), 'Style','pushbutton', butprops{:}, 'BackgroundColor','k','Tag','Colors_M_UnterminatedStrings');
uicontrol('Parent',v2(2), 'Style','pushbutton', butprops{:}, 'BackgroundColor','k','Tag','Colors_M_SystemCommands');
uicontrol('Parent',v2(2), 'Style','pushbutton', butprops{:}, 'BackgroundColor','k','Tag','Colors_M_Errors');
 
%%
p3 = uipanel('Parent',v0, 'Title','MATLAB Command Window colors', panelprops{:});
h3 = uix.HBox('Parent',p3, padding{:});
v3 = [uix.VBox('Parent',h3), uix.VBox('Parent',h3)];
 
uicontrol('Parent',v3(1), 'Style','text', txtprops{:}, 'String','Error Text');
uicontrol('Parent',v3(1), 'Style','text', txtprops{:}, 'String','Warning Text');
uicontrol('Parent',v3(1), 'Style','text', txtprops{:}, 'String','Hyperlinks');
uicontrol('Parent',v3(2), 'Style','pushbutton', butprops{:}, 'BackgroundColor','k','Tag','Color_CmdWinErrors');
uicontrol('Parent',v3(2), 'Style','pushbutton', butprops{:}, 'BackgroundColor','k','Tag','Color_CmdWinWarnings');
uicontrol('Parent',v3(2), 'Style','pushbutton', butprops{:}, 'BackgroundColor','k','Tag','Colors_HTML_HTMLLinks');
 
%%
p4 = uipanel('Parent',v0, 'Title','Code analyzer colors', panelprops{:});
h4 = uix.HBox('Parent',p4, padding{:});
v4 = [uix.VBox('Parent',h4), uix.VBox('Parent',h4)];
 
uicontrol('Parent',v4(1), 'Style','text', txtprops{:}, 'String','Warnings');
uicontrol('Parent',v4(1), 'Style','text', txtprops{:}, 'String','Autofix highlight');
uicontrol('Parent',v4(2), 'Style','pushbutton', butprops{:}, 'BackgroundColor','k','Tag','Colors_M_Warnings');
uicontrol('Parent',v4(2), 'Style','pushbutton', butprops{:}, 'BackgroundColor','k','Tag','ColorsMLintAutoFixBackground');
 
%%
p5 = uipanel('Parent',v0, 'Title','Variable and function colors', panelprops{:});
h5 = uix.HBox('Parent',p5, padding{:});
v5 = [uix.VBox('Parent',h5), uix.VBox('Parent',h5)];
 
uicontrol('Parent',v5(1), 'Style','text', txtprops{:}, 'String','Automatically highlight');
uicontrol('Parent',v5(1), 'Style','text', txtprops{:}, 'String','Variables with shared scope');
uicontrol('Parent',v5(2), 'Style','pushbutton', butprops{:}, 'BackgroundColor','k','Tag','Editor.VariableHighlighting.Color');
uicontrol('Parent',v5(2), 'Style','pushbutton', butprops{:}, 'BackgroundColor','k','Tag','Editor.NonlocalVariableHighlighting.TextColor');
 
%%
p6 = uipanel('Parent',v0, 'Title','Section display colors', panelprops{:});
h6 = uix.HBox('Parent',p6, padding{:});
v6 = [uix.VBox('Parent',h6), uix.VBox('Parent',h6)];
 
uicontrol('Parent',v6(1), 'Style','text', txtprops{:}, 'String','Highlight sections');
uicontrol('Parent',v6(2), 'Style','pushbutton', butprops{:}, 'BackgroundColor','k','Tag','Editorhighlight-lines');
%%
p8 = uipanel('Parent',v0, 'Title','Section display colors', panelprops{:});
h8 = uix.HBox('Parent',p8, padding{:});
v8 = [uix.VBox('Parent',h8), uix.VBox('Parent',h8)];
 
uicontrol('Parent',v8(1), 'Style','text', txtprops{:}, 'String','Font');
uicontrol('Parent',v8(2), 'Style','pushbutton', 'String','F');
 
%%
h7 = uix.HButtonBox('Parent',v0);
uicontrol('Parent',h7, 'Style','pushbutton', butprops{:}, 'String','Load...',...
    'Callback',@loadCallback);
uicontrol('Parent',h7, 'Style','pushbutton', butprops{:}, 'String','Save...',...
    'Callback',@saveCallback);
uicontrol('Parent',h7, 'Style','pushbutton', butprops{:}, 'String','Restore',...
    'Callback',@restoreCallback);
uicontrol('Parent',h7, 'Style','pushbutton', butprops{:}, 'String','Apply',...
    'Callback',@applyCallback);
 
%%
set([h1,h2,h3,h4,h5,h6,h8], 'Widths', [-1 30]);
set(v0, 'Heights', ([2 6 3 2 2 1 1 0]+1.2)*20)
end

% TODO: move or transfer the following callbacks to separate files:
function loadCallback(source,callbackdata) %#ok
    disp('"Load" has been clicked!');
end

function saveCallback(source,callbackdata) %#ok
    disp('"Save" has been clicked!');
end

function restoreCallback(source,callbackdata) %#ok
    disp('"Restore" has been clicked!');
end

function applyCallback(source,callbackdata) %#ok
    disp('"Apply" has been clicked!');
end