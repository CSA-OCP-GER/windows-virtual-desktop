## Bei Bedarf

Install-Module AzureAD 

## Variablen

$myTenantGroupName = "Default Tenant Group"
$myTenantName = "<yourname>"

## Erstellen eines Service Principals im Azure AD

Import-Module AzureAD
$aadContext = Connect-AzureAD
$svcPrincipal = New-AzureADApplication -AvailableToOtherTenants $true -DisplayName "WVD Svc Principal"
$svcPrincipalCreds = New-AzureADApplicationPasswordCredential -ObjectId $svcPrincipal.ObjectId

## Rollen Verbindung im WVD Tenant

Add-RdsAccount -DeploymentUrl "https://rdbroker.wvd.microsoft.com"
Set-RdsContext -TenantGroupName $myTenantGroupName
New-RdsRoleAssignment -RoleDefinitionName "RDS Owner" -ApplicationId $svcPrincipal.AppId -TenantGroupName $myTenantGroupName -TenantName $myTenantName

## Einloggen mit Service Principal
$creds = New-Object System.Management.Automation.PSCredential($svcPrincipal.AppId, (ConvertTo-SecureString $svcPrincipalCreds.Value -AsPlainText -Force))
Add-RdsAccount -DeploymentUrl "https://rdbroker.wvd.microsoft.com" -Credential $creds -ServicePrincipal -AadTenantId $aadContext.TenantId.Guid

## Anzeigen der Login Informationen für die Anlage des VM Host Pools
$svcPrincipalCreds.Value
$aadContext.TenantId.Guid
$svcPrincipal.AppId

