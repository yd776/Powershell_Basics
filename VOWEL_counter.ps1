# taking num4ber form user
$A = Read-Host "enter your string"#A is the input string
$B = $A.ToCharArray()


$n=$B.Length
for($i=0;$i -lt $n;$i++){
    if($B[$i] -eq "a" -or $B[$i] -eq "e" ){
    Write-Host "the stirng contains a,e"}

}
