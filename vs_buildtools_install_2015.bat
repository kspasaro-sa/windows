REM Install vs_buildtools for command prompt (msbuild)
set "vs_buildtools_src=https://download.microsoft.com/download/E/E/D/EEDF18A8-4AED-4CE0-BEBE-70A83094FC5A/BuildTools_Full.exe"
set "vs_buildtools_path=%PROGRAMFILES%\vs_buildtools"
set "vs_buildtools_installer=vs-buildtools-installer.exe"
if not exist "%vs_buildtools_path%" mkdir "%vs_buildtools_path%"
powershell -Command "(New-Object Net.WebClient).DownloadFile('%vs_buildtools_src%', '%vs_buildtools_path%\%vs_buildtools_installer%')"
set "PATH=%PATH%;%vs_buildtools_path%"
%vs_buildtools_installer%