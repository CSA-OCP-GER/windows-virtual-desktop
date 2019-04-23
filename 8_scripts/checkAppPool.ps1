## Definition der Variablen
$myTenantGroupName = "Default Tenant Group"
$myTenantName = "<Tenantname>"

## Login in WVD
Add-RdsAccount -DeploymentUrl "https://rdbroker.wvd.microsoft.com"

## Liste der Host Pools
Get-RdsHostPool $myTenantName

$myHostPool ="<HostPoolname>"

## Liste der vorhandenen App Pools bekommen
Get-RdsAppGroup $myTenantName $myHostPool

## User verknüpfen
Add-RdsAppGroupUser $myTenantName $myHostPool  -UserPrincipalName "<Username>"

## Erst dann kann der User im Client sich anmelden zu der Session auf einem Host
