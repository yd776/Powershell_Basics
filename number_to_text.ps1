# taking number form user

$A = Read-Host "Enter the no of elements in the array" #taking input form user
$B =$A -split ""
$n =$B.Length
for($i=1;$i -lt $n-1;$i++){
    if($B[$i] -eq "1"){
        Write-Host "One"
    }
    else{
        Write-Host "Two" 
    }
    
}
$B
