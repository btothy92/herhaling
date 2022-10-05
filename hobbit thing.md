# herhaling
write-host "LOTR task"

$LotrList = Import-Csv -path C:\Users\Administrator\Documents\lotrnames.csv
foreach($Character in $LotrList)
{
$test=test-path $character.path
    if(!$test )
    {
        new-item -path $Character.path -ItemType Directory
    }

    if($character.isfolder -eq "yes")
       {
           new-item -path $character.path -Name $character.name -itemtype Directory
       }
    else
        {
            new-item -path $character.path -name $character.name -itemtype File
        }
}