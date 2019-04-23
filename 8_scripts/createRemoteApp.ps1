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
    New-RdsRemoteApp jnowvd myPoolno "Remote Apps" -Name "Internet Explorer" -AppAlias internetexplorer

    ### Sample Paint
    New-RdsRemoteApp jnowvd myPoolno "Remote Apps" -Name "Paint" -AppAlias paint

## Publish based on Filepath
New-RdsRemoteApp <tenantname> <hostpoolname> <appgroupname> -Name <remoteappname> -Filepath <filepath>  -IconPath <iconpath> -IconIndex <iconindex>

    ### Sample visual studio (if installed on machine)
    New-RdsRemoteApp jnowvd myPoolno "Remote Apps" -Name "VS2017" -Filepath "C:\Program Files (x86)\Microsoft Visual Studio\2017\Enterprise\Common7\IDE\devenv.exe"  -IconPath "C:\Program Files (x86)\Microsoft Visual Studio\2017\Enterprise\Common7\IDE\devenv.exe" -IconIndex 1

## Give User Access to the new Group
Add-RdsAppGroupUser <tenantname> <hostpoolname> <appgroupname> -UserPrincipalName <userupn>