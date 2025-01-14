; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{5607BD7C-6FDB-4513-8DDC-5D9770233C66}
AppName=Daedalus
;AppVersion=0.5.1AppVerName=Daedalus
AppPublisher=PiSoft
DefaultDirName={pf}\Daedalus
DefaultGroupName=Daedalus
DisableProgramGroupPage=yes
DisableDirPage=yes
DisableStartupPrompt=yes
DisableReadyMemo=yes
DisableReadyPage=yes
OutputBaseFilename=daedalus-en
Compression=lzma/ultra
SolidCompression=yes

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked; OnlyBelowVersion: 0,6.1

[Files]
Source: "D:\CSProj\!Daedalus\Yasfib\bin\Debug\daedalus.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\CSProj\!Daedalus\Yasfib\bin\Debug\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Run]
Filename: "{app}\speedup.bat"

[Icons]
Name: "{group}\Daedalus"; Filename: "{app}\Daedalus.exe"
Name: "{group}\{cm:UninstallProgram,Daedalus}"; Filename: "{uninstallexe}"
Name: "{commondesktop}\Daedalus"; Filename: "{app}\Daedalus.exe"; Tasks: desktopicon
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\Daedalus"; Filename: "{app}\Daedalus.exe"; Tasks: quicklaunchicon

