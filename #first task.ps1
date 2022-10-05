#first task

$array = @( "C:\test1" , "C:\test2" , "C:\test3")
$mapmaking=test-path -Path $array
if ($mapmaking -eq $false)
    {
        new-item -path $array -ItemType directory
    }