This is a proof-of-concept MATLAB color scheme changer, that works when MATLAB is open. 
To use put colorSetting and MatlabTheme (as .m files...) into your MATLAB path or active directory then run `MatlabTheme.ApplyTheme()`.

Currently new themes should be subclasses of MatlabTheme with different `cs` properties, which are constructed using 
name/setting pairs as appear in colorSettingsEnum.m (the 3rd file), and correspond to the color setting found in the
*Preferences > MATLAB > Colors* and *Preferences > MATLAB > Colors > Programming Tools* menus.

The enumeration class, unfortunately, cannot be used as-is, and it is just provided for clarity.