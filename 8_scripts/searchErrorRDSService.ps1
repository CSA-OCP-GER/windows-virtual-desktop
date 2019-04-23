Import-Module -Name Microsoft.RDInfra.RDPowerShell

Add-RdsAccount -DeploymentUrl "https://rdbroker.wvd.microsoft.com"


Get-RdsDiagnosticActivities -TenantName "<mytenant>" -Detailed

Get-RdsDiagnosticActivities -TenantName "<mytenant>" -ActivityId <GUID>

Get-RdsDiagnosticActivities -TenantName "<mytenant>" -Outcome Failure