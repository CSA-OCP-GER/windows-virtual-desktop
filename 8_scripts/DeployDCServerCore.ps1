## Neuen DC im neuen Forest

## Install Feature
Install-WindowsFeature -Name AD-Domain-Services -IncludeManagementTools

## Deploay Domain
Install-ADDSForest -DomainName <domain> -SafeModeAdministratorPassword (Convertto-SecureString -AsPlainText "<password>" -Force)

## Referenz 
## https://sid-500.com/2017/07/01/powershell-how-to-install-a-domain-controller-with-server-core/



