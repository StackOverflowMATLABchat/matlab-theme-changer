[![License](https://img.shields.io/github/license/StackOverflowMATLABchat/matlab-theme-changer.svg)](https://img.shields.io/github/license/StackOverflowMATLABchat/matlab-theme-changer/blob/master/LICENSE.md) [![Issues](https://img.shields.io/github/issues/StackOverflowMATLABchat/matlab-theme-changer.svg)](https://img.shields.io/github/license/StackOverflowMATLABchat/matlab-theme-changer/issues)
# MATLAB Theme Changer
This is a proof-of-concept MATLAB color scheme changer that works when MATLAB is open.

## Usage
There are currently several options to use this code:

### Option 1 (basic CLI) ###
Put `applyPrfFile.m` in your path/cd and supply it with a path to a standard `.prf` file.

### Option 2 (class-based) ###
Add `ColorSetting.m` and `MatlabTheme.m` to your MATLAB path, or put them in your active directory then run `MatlabTheme.applyTheme()`.
Currently new themes should be subclasses of MatlabTheme with different `cs` properties.

### Option 3 (GUI) ###
For a GUI experience, run `matlabThemeChooser.m`. Note that this method requires the [GUI Layout Toolbox](http://www.mathworks.com/matlabcentral/fileexchange/27758-gui-layout-toolbox).

## Notes:
- The enumeration class, unfortunately, cannot be used as-is, and it is just provided for reference.
- prefname/prefvalue pairs as appear in colorSettingsEnum.m (the 3rd file), and correspond to the color setting found in the
*Preferences > MATLAB > Colors* and *Preferences > MATLAB > Colors > Programming Tools* menus.
- See also [Scott Lowe's MATLAB Schemer](https://github.com/scottclowe/matlab-schemer).
- Changes are documented in **CHANGES.md**.