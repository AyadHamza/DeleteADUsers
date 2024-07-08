import-Module ActiveDirectory

$ouPath = "OU=USERSFORFUN,DC=mydomain,DC=com"

$getUsers = Get-ADUser -Filter * -SearchBase $ouPath

$getUsers | ForEach-Object{
    Remove-ADUser $_ -Confirm:$false

}