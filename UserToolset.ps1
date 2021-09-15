Write-Host "Welcome to the IT Sec User Toolset. Please select from the following options.
            1) Unlock a user account
            2) Display Current User Information"

$option = Read-Host -Prompt "Enter number selection: "

if ($option -eq 1)
     {
        $user = Read-Host -Prompt 'Enter User to Unlock: '
        $date = Get-Date

        Unlock-ADAccount $user

        Write-Host "The Account '$user' has been unlocked at '$date'"

        Read-Host -Prompt "Press Enter to exit"
    }

if ($option -eq 2)
    {   #Get User ID from admin
        $user = Read-Host -Prompt 'Enter User ID: '

        # Get User Active Directory Details
        $userADInfo = Get-ADUser $user -Properties *

        # Print information for admin
        Write-Host "User $user Details
        
                    Name: $userADInfo.Name
                    Department: $userADInfo.Department
                    Division: $userADInfo.Division
                    Email: $userADInfo.EmailAddress
                    
                    "
    }