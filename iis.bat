REM Install Git
set "git_src=https://github.com/git-for-windows/git/releases/download/v2.15.0.windows.1/Git-2.15.0-64-bit.exe"
set "git_path=%PROGRAMFILES%\Git"
if not exist "%git_path%" mkdir "%git_path%"
powershell -Command "(New-Object Net.WebClient).DownloadFile('%git_src%', '%git_path%\git-install.exe')"
set "PATH=%PATH%;%git_path%"
git-install.exe /verysilent

REM Enable IIS and ASP.NET features
set "iis_features=(^
  IIS-WebServerRole^
  IIS-WebServer^
  IIS-CommonHttpFeatures^
  IIS-HttpErrors^
  IIS-ApplicationDevelopment^
  IIS-NetFxExtensibility^
  IIS-NetFxExtensibility45^
  IIS-HealthAndDiagnostics^
  IIS-HttpLogging^
  IIS-Security^
  IIS-RequestFiltering^
  IIS-Performance^
  IIS-WebServerManagementTools^
  IIS-ManagementScriptingTools^
  WCF-Services45^
  WCF-TCP-PortSharing45^
  IIS-StaticContent^
  IIS-DefaultDocument^
  IIS-DirectoryBrowsing^
  IIS-WebSockets^
  IIS-ApplicationInit^
  IIS-ASPNET^
  IIS-ASPNET45^
  IIS-ASP^
  IIS-CGI^
  IIS-ISAPIExtensions^
  IIS-ISAPIFilter^
  IIS-ServerSideIncludes^
  IIS-HttpCompressionStatic^
  IIS-ManagementConsole^
  IIS-ManagementService^
  IIS-FTPServer^
  IIS-FTPSvc^
 )"
for %f in %iis_features% do DISM /online /enable-feature /featurename:%f

REM Clone git repo

REM Set up IIS
set "PATH=%PATH%;%windir%\system32\inetsrv"
