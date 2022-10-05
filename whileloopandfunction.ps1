function test-localuser
{
    

    param($userToCheck)

    $exits = $true
        try
        {
           $userobject =  Get-localuser -name $userToCheck -ErrorAction stop
         }
        catch 
        {   
            $exits = $false
        }

    $exits

}

$userstomake=get-content -Path 'C:\Users\Administrator\Documents\users.txt'

foreach($name in $userstomake)
{
 
    if(!(test-localuser -userToCheck $name))
     {

              $answer = read-host "would you like to make a user called $name ? (y or n)"
              while($answer -ne "y" -and $answer -ne "n")
              {
                    'not a y or n'
                    
              
              }
              
                       if($answer -eq 'y')
                        {
                                   New-LocalUser -name $name -nopassword
                                    write-host "$name user has been made."
                         }
                       elseif($answer -eq 'n')
                       {
                                    write-host "$name won't be made." 
                        }
                       
                
       }
 }
 