This is a proof-of-concept MATLAB color scheme changer, that works when MATLAB is open.
There are currently 2 options to use this code:
### Option 1 ###
Put colorSetting and MatlabTheme (as .m files...) into your MATLAB path or active directory then run `MatlabTheme.ApplyTheme()`.
Currently new themes should be subclasses of MatlabTheme with different `cs` properties.

### Option 2 ###
Put ApplyPrfFile.m(atlab) in your path/cd and supply it with a standard .prf file.

### Option 3 (coming soon) ###
Run MatlabThemeChooser. Should be self-explanatory... 

Notes:
- The enumeration class, unfortunately, cannot be used as-is, and it is just provided for reference.
- prefname/prefvalue pairs as appear in colorSettingsEnum.m (the 3rd file), and correspond to the color setting found in the
*Preferences > MATLAB > Colors* and *Preferences > MATLAB > Colors > Programming Tools* menus.

29-July-2015:
- Added Amro's `.prf` parsing script with the TODO parts done :)
- Added Amro's GUI v2 as `MatlabThemeChooser` with slight modifications to include the prefNames as in the uicontrols' `Tag` field.