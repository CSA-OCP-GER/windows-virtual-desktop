## Login
Add-RdsAccount -DeploymentUrl "https://rdbroker.wvd.microsoft.com"

## Create a new Remote App Group
New-RdsAppGroup [-TenantName] <String> [-HostPoolName] <String> [-Name] <String> 

## Check if it works
Get-RdsAppGroup [-TenantName] <String> [-HostPoolName] <String> [-Name <String>]

## Get a list of Apps on the Host pool
Get-RdsStartMenuApp [-TenantName] <String> [-HostPoolName] <String> [-AppGroupName] <String>

## Set a new App using the Alias...

New-RdsRemoteApp <tenantname> <hostpoolname> <appgroupname> -Name <remoteappname> -AppAlias <appalias>

    ### Sample IE
    New-RdsRemoteApp <mytenant> <mypool> "Remote Apps" -Name "Internet Explorer" -AppAlias internetexplorer

    ### Sample Paint
    New-RdsRemoteApp <mytenant> <mypool> "Remote Apps" -Name "Paint" -AppAlias paint

## Publish based on Filepath
New-RdsRemoteApp <tenantname> <hostpoolname> <appgroupname> -Name <remoteappname> -Filepath <filepath>  -IconPath <iconpath> -IconIndex <iconindex>

## Give User Access to the new Group
Add-RdsAppGroupUser <tenantname> <hostpoolname> <appgroupname> -UserPrincipalName <userupn>
