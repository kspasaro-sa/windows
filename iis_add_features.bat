REM Enable system IIS features
set iis_features=^
(^
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
)

for %%f in %iis_features% do DISM /online /enable-feature /all /featurename:%%f

