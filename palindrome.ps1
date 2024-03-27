#PALINDROME IN POWERSHELL

# taking num4ber form user
$A = Read-Host "enter your string"#A is the input string
$B = $A.ToCharArray()
[Array]:: Reverse($B)
$R= $B -join ''
$R # $E is the reversed string

if($R -eq $A){
Write-Host "The string is a palindromw"
}
else{
Write-Host "String is not a palindrome"}
