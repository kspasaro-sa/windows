REM Install git for command prompt
set "git_src=https://github.com/git-for-windows/git/releases/download/v2.15.0.windows.1/Git-2.15.0-64-bit.exe"
set "git_path=%PROGRAMFILES%\Git"
set "git_installer=git-installer.exe"
if not exist "%git_path%" mkdir "%git_path%"
powershell -Command "(New-Object Net.WebClient).DownloadFile('%git_src%', '%git_path%\%git_installer%')"
set "PATH=%PATH%;%git_path%"
%git_installer% /verysilent