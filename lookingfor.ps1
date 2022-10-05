"Who are you looking for?"
$name=Read-Host
try
{
    Get-LocalUser -Name $name -ErrorAction stop 
}
catch
{
    Write-Verbose -Message ("Cannot find this user : " + $name) -Verbose
    'This username was not found:' + $name | out-file -FilePath 'C:\Users\Administrator\errorlog.txt'  -force -append
}
