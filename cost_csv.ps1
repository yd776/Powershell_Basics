# taking num4ber form user
$data=Import-Csv -Path C:\Users\YDEWAN\Downloads\shidts.csv
$a = $data.Date
$lenght = $a.Length
$shift1 = $data.'Shift 1'

$time= New-Object String[] $lenght
for($i=0;$i -lt $lenght;$i++){
    $temp= $a[$i]-split(" ")
    
    $time[$i]=$temp[1]
    $a[$i]=$temp[0]
    }

for($i=0;$i -lt $lenght;$i++){
        $data[$i] | Add-Member -MemberType NoteProperty -Name "Time" -Value $time[$i]
        $data[$i] | Add-Member -MemberType NoteProperty -Name "Date1" -Value $a[$i]
        $data[$i] | Add-Member -MemberType NoteProperty -Name "Cost" -Value ([int]$shift1[$i] * 90)
    }

foreach ($row in $data){
        $row.PSObject.Properties.Remove('Date')
    }

$data | Export-Csv -Path 'C:\Users\YDEWAN\Downloads\shidts.csv'-NoTypeInformation
