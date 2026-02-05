Import-Module ActiveDirectory

$FirstName = Read-Host "Enter first name"
$LastName  = Read-Host "Enter last name"
$Username  = Read-Host "Enter username (SamAccountName)"
$UPN       = Read-Host "Enter UPN (user@domain.com)"

New-ADUser `
    -Name "$FirstName $LastName" `
    -GivenName $FirstName `
    -Surname $LastName `
    -SamAccountName $Username `
    -UserPrincipalName $UPN `
    -AccountPassword (Read-Host -AsSecureString "Enter Password") `
    -Enabled $true
