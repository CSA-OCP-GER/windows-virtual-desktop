Import-Module -Name Microsoft.RDInfra.RDPowerShell

Add-RdsAccount -DeploymentUrl "https://rdbroker.wvd.microsoft.com"


Get-RdsDiagnosticActivities -TenantName "jnowvd" -Detailed

Get-RdsDiagnosticActivities -TenantName "jnowvd" -ActivityId 968e22de-9b36-4d28-9c18-357e7ea20000

Get-RdsDiagnosticActivities -TenantName "jnowvd" -Outcome Failure