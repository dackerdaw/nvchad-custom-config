# Readme

This is my personal pre 2.0 NvChad

## Add nvim-qt to Windows Explorer Context Menu

In order to add the "Open with Neovim" prompt in Windows Explorer Context Menu, create the following .bat file and run it as administrator:

```
@echo off
SET nvimPath=C:\Program Files\Neovim\bin\nvim-qt.exe

rem add it for all file types
@reg add "HKEY_CLASSES_ROOT\*\shell\Open with Neovim"         /t REG_SZ /v "" /d "Open with Neovim" /f
@reg add "HKEY_CLASSES_ROOT\*\shell\Open with Neovim"         /t REG_EXPAND_SZ /v "Icon" /d "%nvimPath%,0" /f
@reg add "HKEY_CLASSES_ROOT\*\shell\Open with Neovim\command" /t REG_SZ /v "" /d "%nvimPath% \"%%1\"" /f

rem add it for folders
@reg add "HKEY_CLASSES_ROOT\Directory\shell\Open with Neovim"         /t REG_SZ /v "" /d "Open with Neovim" /f
@reg add "HKEY_CLASSES_ROOT\Directory\shell\Open with Neovim"         /t REG_EXPAND_SZ /v "Icon" /d "%nvimPath%,0" /f
@reg add "HKEY_CLASSES_ROOT\Directory\shell\Open with Neovim\command" /t REG_SZ /v "" /d "%nvimPath% \"%%1\"" /f

rem add it for current folder
@reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\Open with Neovim"         /t REG_SZ /v "" /d "Open with Neovim" /f
@reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\Open with Neovim"         /t REG_EXPAND_SZ /v "Icon" /d "%nvimPath%,0" /f
@reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\Open with Neovim\command" /t REG_SZ /v "" /d "%nvimPath% \"%%v\"" /f

pause
```
