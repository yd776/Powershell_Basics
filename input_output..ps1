function display_name{ # creating a function to display names

param($string)

Write-Host "Your name is $string"
}

$string = Read-Host "What is your name?"# taking input from user

display_name($string)
