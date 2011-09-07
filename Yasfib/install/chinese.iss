﻿; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{5607BD7C-6FDB-4513-8DDC-5D9770233C66}
AppName=灵智浏览器
;AppVersion=0.6AppVerName=灵智浏览器
AppPublisher=PiSoft
DefaultDirName={pf}\Daedalus
DefaultGroupName=灵智浏览器
DisableDirPage=yes
DisableStartupPrompt=yes
DisableReadyMemo=yes
DisableReadyPage=yes
DisableProgramGroupPage=yes
OutputBaseFilename=daedalus-cn
Compression=lzma/ultra
SolidCompression=yes
                                                                     
[Languages]
Name: "chinesesimp"; MessagesFile: "compiler:Languages\ChineseSimp.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked; OnlyBelowVersion: 0,6.1

[Files]
Source: "D:\CSProj\!Daedalus\Yasfib\bin\Debug\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Run]
Filename: "{app}\speedup.bat"


[Icons]
Name: "{group}\灵智浏览器"; Filename: "{app}\daedalus.exe"
Name: "{group}\{cm:UninstallProgram,灵智浏览器}"; Filename: "{uninstallexe}"
Name: "{commondesktop}\灵智浏览器"; Filename: "{app}\daedalus.exe"; Tasks: desktopicon
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\灵智浏览器"; Filename: "{app}\daedalus.exe"; Tasks: quicklaunchicon
