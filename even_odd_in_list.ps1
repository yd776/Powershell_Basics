#taking an array as input in powershell and printing the array

$A = Read-Host "Enter the no of elements in the array" #taking input form user
$A=[int]$A
$ar = New-Object int[] $A
$evenelements=0
$oddelements=0

for($i=0;$i -lt $A;$i++){
    $S= Read-Host "enter the $i th element"
    $S= [int]$S
    $ar[$i] = $s 
    if($ar[$i] % 2 -eq 0){
        $evenelements+=1

    }
    else{
        $oddelements+=1
    }

}

Write-Host $oddelements
Write-Host $evenelements

Write-Host "This array contains: $($ar -join ',')"
