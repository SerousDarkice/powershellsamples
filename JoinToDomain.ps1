# For adding new computers, changing their name, and adding to right OU

$newComputerName = "NewHostname"
$domainName = "DomainName.TLD"
$OU = "OU=,DC=DomainName,DC=TLD"

Add-Computer -NewName $newComputerName -DomainName $domainName -DomainCredential (Get-Credential) -OUPath $OU
