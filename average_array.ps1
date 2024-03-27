#taking an array as input in powershell and printing the array

$A = Read-Host "Enter the no of elements in the array" #taking input form user
$A=[int]$A
$ar = New-Object int[] $A
$evenelements=0
$oddelements=0
$sum=0

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
    $sum = $sum+=$S

}

Write-Host $oddelements
Write-Host $evenelements
$average=$sum/ $ar.Length
$average #stores the result as a f;oat type in general 

Write-Host "This array contains: $($ar -join ',')"
