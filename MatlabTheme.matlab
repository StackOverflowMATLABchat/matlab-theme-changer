classdef MatlabTheme < handle
    properties (Constant = true, Access = public)
      cs = {colorSetting.BACKGROUND_COLOR,java.awt.Color.BLACK;...
            colorSetting.TEXT_COLOR,java.awt.Color.WHITE};
    end    
    
    methods (Access = public, Static = true)
        function ApplyTheme()
            MatlabTheme.ApplyColorSetting();
        end
    end
    
    methods (Access = private, Static = true)
        function cs = makeCsVec()
            nCs = size(MatlabTheme.cs,1);
            cs = repmat(colorSetting(MatlabTheme.cs{1,1},MatlabTheme.cs{1,2}),[nCs,1]);
            for ind1 = 2:nCs
                cs(ind1) = colorSetting(MatlabTheme.cs{ind1,1},MatlabTheme.cs{ind1,2});
            end
        end
        
        function ApplyColorSetting()
            colorSettingVec = MatlabTheme.makeCsVec();
            for ind1 = 1:size(colorSettingVec,1)
               % Change the value:
                com.mathworks.services.PrefsAWT.setColorPref(...
                colorSettingVec(ind1).colorPrefName,...
                colorSettingVec(ind1).colorPrefSetting);
               % Notify the listeners (for change to occur):
                com.mathworks.services.ColorPrefs.notifyColorListeners(...
                  colorSettingVec(ind1).colorPrefName);  
            end
        end
         
    end
end