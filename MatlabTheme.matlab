classdef MatlabTheme < handle
    properties (Constant = true, Access = public)
      cs = {colorSetting.BACKGROUND_COLOR,java.awt.Color.BLACK;...
            colorSetting.TEXT_COLOR,java.awt.Color.WHITE};
    end    
    
    methods (Access = public, Static = true)
        function ApplyTheme()
            MatlabTheme.ApplyColorSettings();
        end
    end
    
    methods (Access = protected, Static = true)
        function cs = makeCsVec()
            nCs = size(MatlabTheme.cs,1);
            cs = repmat(colorSetting(MatlabTheme.cs{1,1},MatlabTheme.cs{1,2}),[nCs,1]);
            for ind1 = 2:nCs
                cs(ind1) = colorSetting(MatlabTheme.cs{ind1,1},MatlabTheme.cs{ind1,2});
            end
        end
        
        function ApplyColorSettings()
            colorSettingVec = MatlabTheme.makeCsVec();
            % Make sure "use system colors" is off
            MatlabTheme.turnOffSystemColors();
            % Apply all colors:
            for ind1 = 1:size(colorSettingVec,1)
                MatlabTheme.applyColor(colorSettingVec(ind1).colorPrefName,...
                                       colorSettingVec(ind1).colorPrefSetting);
            end
        end
        
        function turnOffSystemColors()
            sysOffPref = colorSetting(colorSetting.USE_SYSTEM_COLORS,false);
            com.mathworks.services.Prefs.setBooleanPref(sysOffPref.colorPrefName,sysOffPref.colorPrefSetting);         
        end
        
        function applyColor(prefName,prefSetting)
           % Change the value:
           com.mathworks.services.PrefsAWT.setColorPref(prefName,prefSetting);
           % Notify the listeners (for change to occur):
           com.mathworks.services.ColorPrefs.notifyColorListeners(prefName);  
        end
         
    end
end