$allfiles = Get-ChildItem -Path C:\ -Recurse:$true

$allfiles | Where-Object { $_.Name -like "*.csv" } | Select-Object Name,@{label=length;expression={$($this.fullname.length)}}

$resultset = @()
$allfiles | Where-Object { $_.Name -like "*.log" } | foreach {
    Remove-Variable -Name length,resultind -ErrorAction SilentlyContinue
    $length = $_.FullName.Length
    $resultind = [pscustomobject][ordered]@{
        length = $length;
        filename = $_.Name;
        }
    $resultset += $resultind
    } # Foreach
    
    $resultset
